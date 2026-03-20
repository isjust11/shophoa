# BloomStore — Hướng dẫn Deploy

## Tổng quan kiến trúc

```
Client → Cloudflare → Nginx (SSL/Gzip/Rate Limit)
                         ├── /          → React build (static)
                         ├── /api/*     → PM2 → NestJS backend
                         ├── /quanly/*  → PM2 → Admin panel
                         └── /uploads/* → PM2 → User uploads
                                            └── Docker MariaDB (:3307)
```

---

## Yêu cầu hệ thống

| Component | Version |
|-----------|---------|
| OS | Ubuntu 24.04 LTS |
| Node.js | v20.x |
| Docker | 29.x |
| PM2 | Latest |
| Nginx | Latest |

---

## 1. Cài đặt VPS lần đầu

### 1.1 Cài dependencies

```bash
# Node.js 20
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
apt install -y nodejs

# PM2
npm install -g pm2

# Docker
curl -fsSL https://get.docker.com | sh

# Nginx
apt install -y nginx
```

### 1.2 Clone project

```bash
mkdir -p /var/www
cd /var/www
git clone git@github.com:phuctu1901/web-shop-hoa.git bloomstore
cd bloomstore
```

### 1.3 Tạo file `.env` (root project)

```bash
cat > /var/www/bloomstore/.env << 'EOF'
# Database
DB_HOST=localhost
DB_PORT=3307
DB_USER=bloomstore
DB_PASS=bloomstore_pass
DB_NAME=bloomstore

# Backend
PORT=3000
JWT_SECRET=<generate-random-string>
NODE_ENV=production

# Domain
DOMAIN=shophoa.techcave.space
CORS_ORIGINS=https://shophoa.techcave.space
EOF
```

> **Tạo JWT_SECRET:** `openssl rand -hex 32`

### 1.4 Khởi động Database (Docker)

```bash
cd /var/www/bloomstore
docker compose up -d
```

Kiểm tra: `docker compose ps` — MariaDB phải ở trạng thái **healthy**.

### 1.5 Build Backend

```bash
cd /var/www/bloomstore/backend
npm install
npm run build
```

### 1.6 Build Frontend

```bash
cd /var/www/bloomstore
npm install
npm run build
```

### 1.7 Seed dữ liệu (lần đầu)

```bash
cd /var/www/bloomstore/backend
npx ts-node src/seed.ts
```

### 1.8 Khởi động PM2

```bash
cd /var/www/bloomstore
pm2 start ecosystem.config.js
pm2 save
pm2 startup  # tự start khi reboot
```

---

## 2. Cấu hình Nginx

### 2.1 Tạo config

```bash
cat > /etc/nginx/sites-available/bloomstore << 'NGINX'
# Rate limiting
limit_req_zone $binary_remote_addr zone=api:10m rate=30r/s;
limit_req_zone $binary_remote_addr zone=login:10m rate=5r/m;

upstream bloomstore_api {
    server 127.0.0.1:3000;
    keepalive 32;
}

server {
    listen 80;
    server_name shophoa.techcave.space;

    # Security Headers
    add_header X-Frame-Options "SAMEORIGIN" always;
    add_header X-Content-Type-Options "nosniff" always;
    add_header X-XSS-Protection "1; mode=block" always;

    # Gzip
    gzip on;
    gzip_vary on;
    gzip_comp_level 6;
    gzip_types text/plain text/css application/json application/javascript
               text/xml application/xml text/javascript image/svg+xml;

    client_max_body_size 10M;

    # React Frontend
    root /var/www/bloomstore/build;
    index index.html;

    location / {
        try_files $uri $uri/ /index.html;
        location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg|woff|woff2)$ {
            expires 30d;
            add_header Cache-Control "public, immutable";
        }
    }

    # API
    location /api/ {
        limit_req zone=api burst=20 nodelay;
        proxy_pass http://bloomstore_api;
        proxy_http_version 1.1;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }

    # Login rate limit
    location /api/auth/login {
        limit_req zone=login burst=3 nodelay;
        proxy_pass http://bloomstore_api;
        proxy_http_version 1.1;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-Proto $scheme;
    }

    # Admin panel
    location /quanly/ {
        proxy_pass http://bloomstore_api;
        proxy_http_version 1.1;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-Proto $scheme;
    }

    # Uploads
    location /uploads/ {
        proxy_pass http://bloomstore_api;
        expires 30d;
        add_header Cache-Control "public";
    }

    # Deny hidden files
    location ~ /\. { deny all; }
}
NGINX

ln -sf /etc/nginx/sites-available/bloomstore /etc/nginx/sites-enabled/
nginx -t && systemctl reload nginx
```

### 2.2 SSL (Let's Encrypt)

```bash
apt install -y certbot python3-certbot-nginx
certbot --nginx -d shophoa.techcave.space
```

---

## 3. Cập nhật code (Deploy mới)

```bash
cd /var/www/bloomstore

# Pull code
git pull origin main

# Rebuild backend
cd backend && npm install && npm run build && cd ..

# Rebuild frontend 
npm install && npm run build

# Restart backend
pm2 restart bloomstore-api
```

### Script deploy nhanh

Tạo file `/var/www/bloomstore/deploy.sh`:

```bash
#!/bin/bash
set -e
cd /var/www/bloomstore

echo "📦 Pulling latest code..."
git pull origin main

echo "🔧 Building backend..."
cd backend && npm install && npm run build && cd ..

echo "🎨 Building frontend..."
npm install && npm run build

echo "🔄 Restarting PM2..."
pm2 restart bloomstore-api

echo "✅ Deploy complete!"
pm2 status
```

```bash
chmod +x /var/www/bloomstore/deploy.sh
# Sử dụng: /var/www/bloomstore/deploy.sh
```

---

## 4. Cấu trúc file trên VPS

```
/var/www/bloomstore/
├── .env                    # Biến môi trường (KHÔNG commit)
├── ecosystem.config.js     # PM2 config
├── docker-compose.yml      # MariaDB Docker
├── deploy.sh               # Script deploy nhanh
├── build/                  # React production build (nginx serve)
├── backend/
│   ├── dist/               # NestJS compiled (PM2 chạy file này)
│   ├── public/
│   │   ├── admin/          # Admin panel (HTML/CSS/JS)
│   │   └── uploads/        # User uploaded images
│   └── src/                # Source code
├── src/                    # React source
└── logs/                   # PM2 log files
```

---

## 5. Lệnh quản lý thường dùng

| Mục đích | Lệnh |
|----------|-------|
| Xem trạng thái | `pm2 status` |
| Xem logs | `pm2 logs bloomstore-api --lines 50` |
| Restart backend | `pm2 restart bloomstore-api` |
| Database status | `docker compose ps` |
| Restart database | `docker compose restart` |
| Nginx reload | `nginx -t && systemctl reload nginx` |
| SSL renew | `certbot renew` |
| Disk usage | `df -h && du -sh /var/www/bloomstore/` |

---

## 6. Troubleshooting

| Lỗi | Nguyên nhân | Giải pháp |
|-----|-------------|-----------|
| `ECONNREFUSED :3307` | MariaDB Docker chưa chạy | `docker compose up -d` |
| `EADDRINUSE :3000` | Port đang bị dùng | `pm2 delete all && pm2 start ecosystem.config.js` |
| 502 Bad Gateway | Backend chưa start | `pm2 restart bloomstore-api && pm2 logs` |
| Git pull lỗi auth | Token/SSH key hết hạn | Cập nhật deploy key trong GitHub repo settings |
| Frontend không cập nhật | Chưa build lại React | `npm run build` ở root project |
| Upload ảnh lỗi | Thiếu thư mục uploads | `mkdir -p backend/public/uploads` |
