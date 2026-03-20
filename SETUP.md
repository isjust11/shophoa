# 🌸 BloomStore - Hướng Dẫn Cài Đặt & Triển Khai

## Mục Lục

- [Yêu Cầu Hệ Thống](#yêu-cầu-hệ-thống)
- [Kiến Trúc Dự Án](#kiến-trúc-dự-án)
- [Chạy Local (Development)](#chạy-local-development)
- [Triển Khai Production](#triển-khai-production)
- [CI/CD với GitHub Actions](#cicd-với-github-actions)
- [Quản Lý & Bảo Trì](#quản-lý--bảo-trì)

---

## Yêu Cầu Hệ Thống

| Công cụ    | Phiên bản    | Ghi chú                      |
| ---------- | ------------ | ----------------------------- |
| Node.js    | >= 20.x      | Khuyến nghị LTS              |
| npm        | >= 9.x       | Đi kèm Node.js               |
| Docker     | >= 24.x      | Chạy MariaDB                  |
| Git        | >= 2.x       | Quản lý source code           |
| PM2        | >= 5.x       | Chỉ cần trên production       |
| Nginx      | >= 1.18      | Chỉ cần trên production       |

---

## Kiến Trúc Dự Án

```
flower-store/
├── src/                    # React 18 Frontend (Create React App)
├── backend/                # NestJS Backend (TypeScript)
│   ├── src/                # Source code backend
│   ├── public/             # Admin panel + uploads
│   └── dist/               # Build output
├── build/                  # Frontend build output
├── nginx/                  # Cấu hình Nginx
│   └── bloomstore.conf
├── docker-compose.yml      # MariaDB container
├── ecosystem.config.js     # PM2 config
├── deploy.sh               # Script triển khai thủ công
├── setup-server.sh         # Script cài đặt VPS lần đầu
├── .env.example            # Mẫu biến môi trường
└── .github/workflows/      # GitHub Actions CI/CD
    └── deploy.yml
```

**Tech Stack:**
- **Frontend:** React 18, React Router v6, Font Awesome
- **Backend:** NestJS, TypeORM, Passport JWT, Swagger
- **Database:** MariaDB 11 (Docker)
- **Process Manager:** PM2
- **Web Server:** Nginx (reverse proxy + static files)

---

## Chạy Local (Development)

### Bước 1: Clone repo

```bash
git clone https://github.com/phuctu1901/web-shop-hoa.git
cd web-shop-hoa
```

### Bước 2: Tạo file `.env`

```bash
cp .env.example .env
```

Mở file `.env` và chỉnh sửa nếu cần:

```env
# ========== Database ==========
DB_HOST=localhost
DB_PORT=3307
DB_USER=bloomstore
DB_PASS=bloomstore_pass
DB_NAME=bloomstore

# ========== Backend ==========
PORT=3000
JWT_SECRET=your-very-secure-jwt-secret-change-this
NODE_ENV=development

# ========== Domain ==========
DOMAIN=localhost
CORS_ORIGINS=http://localhost:3001
```

> **Lưu ý:** Đổi `NODE_ENV=development` và `CORS_ORIGINS=http://localhost:3001` khi chạy local.

### Bước 3: Khởi động Database

```bash
docker compose up -d
```

Kiểm tra database đã sẵn sàng:

```bash
docker ps    # Xem container bloomstore-db đang chạy
docker logs bloomstore-db    # Xem logs nếu có lỗi
```

### Bước 4: Cài đặt & chạy Backend

```bash
cd backend
npm install
npm run start:dev    # Chạy ở chế độ watch (tự reload khi sửa code)
```

Backend sẽ chạy tại: `http://localhost:3000`

- API: `http://localhost:3000/api`
- Swagger Docs: `http://localhost:3000/api/docs`
- Admin Panel: `http://localhost:3000/quanly/`

*(Tùy chọn)* Seed dữ liệu mẫu:

```bash
npm run seed
```

### Bước 5: Cài đặt & chạy Frontend

Mở terminal mới:

```bash
cd ..    # Về thư mục gốc
npm install
npm start    # Hoặc: npm run dev
```

Frontend sẽ chạy tại: `http://localhost:3001`

### Tóm tắt các cổng khi chạy local

| Dịch vụ   | Cổng  | URL                              |
| ---------- | ----- | -------------------------------- |
| Frontend   | 3001  | http://localhost:3001             |
| Backend    | 3000  | http://localhost:3000/api         |
| Swagger    | 3000  | http://localhost:3000/api/docs    |
| Admin      | 3000  | http://localhost:3000/quanly/     |
| MariaDB    | 3307  | localhost:3307                    |

---

## Triển Khai Production

### Phương án 1: Setup tự động (VPS mới)

Chạy script trên VPS Ubuntu/Debian mới (quyền root):

```bash
# Tải và chạy script setup
curl -sSL https://raw.githubusercontent.com/phuctu1901/web-shop-hoa/main/setup-server.sh | bash
```

Hoặc clone repo rồi chạy:

```bash
git clone https://github.com/phuctu1901/web-shop-hoa.git /var/www/bloomstore
cd /var/www/bloomstore
chmod +x setup-server.sh
./setup-server.sh
```

Script `setup-server.sh` sẽ tự động:
1. Cập nhật hệ thống & cài đặt các gói cần thiết
2. Cài Node.js 20, PM2, Nginx, Docker
3. Clone repo & tạo file `.env`
4. Khởi động MariaDB, build backend & frontend
5. Cấu hình PM2 & Nginx
6. Cài SSL (Certbot)
7. Tạo user `runner` cho GitHub Actions

### Phương án 2: Triển khai thủ công (từng bước)

#### 2.1 Cài đặt dependencies trên server

```bash
# Node.js 20
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt-get install -y nodejs

# PM2
npm install -g pm2

# Nginx
apt-get install -y nginx

# Docker
curl -fsSL https://get.docker.com | sh
```

#### 2.2 Clone code & tạo .env

```bash
git clone https://github.com/phuctu1901/web-shop-hoa.git /var/www/bloomstore
cd /var/www/bloomstore
cp .env.example .env
nano .env    # Chỉnh sửa biến môi trường (đặc biệt JWT_SECRET!)
```

> **⚠️ Quan trọng:** Đổi `JWT_SECRET` thành chuỗi ngẫu nhiên:
> ```bash
> openssl rand -hex 32
> ```

#### 2.3 Khởi động Database

```bash
cd /var/www/bloomstore
docker compose up -d
sleep 10    # Đợi database sẵn sàng
```

#### 2.4 Build Backend

```bash
cd /var/www/bloomstore/backend
npm ci --production=false
npm run build
```

*(Tùy chọn)* Seed dữ liệu:

```bash
npx ts-node -r tsconfig-paths/register src/seed.ts
```

#### 2.5 Build Frontend

```bash
cd /var/www/bloomstore
npm ci
npm run build
```

#### 2.6 Tạo thư mục cần thiết

```bash
mkdir -p /var/www/bloomstore/backend/public/uploads
mkdir -p /var/www/bloomstore/logs
```

#### 2.7 Khởi động PM2

```bash
cd /var/www/bloomstore
pm2 start ecosystem.config.js
pm2 save
pm2 startup    # Tự khởi động khi reboot
```

#### 2.8 Cấu hình Nginx

```bash
cp /var/www/bloomstore/nginx/bloomstore.conf /etc/nginx/sites-available/bloomstore
ln -sf /etc/nginx/sites-available/bloomstore /etc/nginx/sites-enabled/bloomstore
rm -f /etc/nginx/sites-enabled/default

# Kiểm tra cấu hình & reload
nginx -t && systemctl reload nginx
```

#### 2.9 Cài SSL

```bash
apt-get install -y certbot python3-certbot-nginx
certbot --nginx -d shophoa.techcave.space
```

### Phương án 3: Script deploy nhanh (server đã setup)

Dùng cho các lần deploy sau khi server đã được cài đặt:

```bash
cd /var/www/bloomstore
chmod +x deploy.sh
./deploy.sh
```

---

## CI/CD với GitHub Actions

Dự án sử dụng GitHub Actions với **self-hosted runner** để tự động deploy khi push lên branch `main`.

### Cách hoạt động

```
Push to main → GitHub Actions trigger → Self-hosted runner trên VPS
→ Sync code → Build backend → Build frontend → Restart PM2 → Reload Nginx
```

### Cài đặt Self-hosted Runner

1. Vào **GitHub repo** → Settings → Actions → Runners → New self-hosted runner

2. Tạo user `runner` trên VPS:
   ```bash
   useradd -m -s /bin/bash runner
   usermod -aG docker runner
   ```

3. Tải & cấu hình runner:
   ```bash
   su - runner
   mkdir ~/actions-runner && cd ~/actions-runner
   # Tải runner (xem link cụ thể trên trang GitHub)
   curl -o actions-runner.tar.gz -L https://github.com/actions/runner/releases/download/v2.x.x/actions-runner-linux-x64-2.x.x.tar.gz
   tar xzf actions-runner.tar.gz
   ./config.sh --url https://github.com/phuctu1901/web-shop-hoa --token YOUR_TOKEN --name bloomstore-vps --labels self-hosted,linux --unattended
   exit
   ```

4. Cài service (quyền root):
   ```bash
   cd /home/runner/actions-runner
   ./svc.sh install runner
   ./svc.sh start
   ```

5. Cấp quyền cho runner:
   ```bash
   # Cho phép reload Nginx
   echo "runner ALL=(ALL) NOPASSWD: /usr/bin/nginx, /usr/sbin/nginx, /bin/systemctl reload nginx, /bin/systemctl restart nginx" > /etc/sudoers.d/runner-nginx
   chmod 440 /etc/sudoers.d/runner-nginx

   # Quyền sở hữu thư mục app
   chown -R runner:runner /var/www/bloomstore
   ```

### Trigger deploy thủ công

Vào GitHub repo → Actions → **Deploy BloomStore** → Run workflow

---

## Quản Lý & Bảo Trì

### Các lệnh PM2 thường dùng

```bash
pm2 status                    # Xem trạng thái
pm2 logs bloomstore-api       # Xem logs real-time
pm2 restart bloomstore-api    # Restart backend
pm2 stop bloomstore-api       # Dừng backend
pm2 monit                     # Dashboard monitoring
```

### Quản lý Database

```bash
docker compose ps              # Xem trạng thái container
docker compose logs mariadb    # Xem logs database
docker compose down            # Dừng database
docker compose up -d           # Khởi động lại database
```

### Backup Database

```bash
docker exec bloomstore-db mariadb-dump -u bloomstore -pbloomstore_pass bloomstore > backup_$(date +%Y%m%d).sql
```

### Restore Database

```bash
docker exec -i bloomstore-db mariadb -u bloomstore -pbloomstore_pass bloomstore < backup_20260320.sql
```

### Xem logs Nginx

```bash
tail -f /var/log/nginx/access.log
tail -f /var/log/nginx/error.log
```

### Gia hạn SSL

Certbot tự động gia hạn, nhưng có thể kiểm tra:

```bash
certbot renew --dry-run
```

---

## URLs Production

| Trang         | URL                                          |
| ------------- | -------------------------------------------- |
| 🌐 Frontend  | https://shophoa.techcave.space               |
| 🔧 Admin     | https://shophoa.techcave.space/quanly/       |
| 📚 API Docs  | https://shophoa.techcave.space/api/docs      |

---

## Xử Lý Sự Cố

| Vấn đề                    | Giải pháp                                                   |
| ------------------------- | ------------------------------------------------------------ |
| Backend không khởi động   | `pm2 logs bloomstore-api` để xem lỗi                        |
| Database connection error | `docker compose ps` kiểm tra container, `docker compose up -d` |
| Nginx 502 Bad Gateway     | `pm2 status` kiểm tra backend, `nginx -t` kiểm tra config    |
| Frontend trắng trang      | Kiểm tra `build/` có tồn tại, rebuild: `npm run build`      |
| SSL hết hạn               | `certbot renew`                                              |
| Disk đầy                  | `docker system prune -a` dọn Docker, xóa logs cũ            |
