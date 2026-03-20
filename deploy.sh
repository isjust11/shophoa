#!/bin/bash
set -e

# =============================================
# BloomStore - Deploy Script
# Usage: ./deploy.sh
# =============================================

APP_DIR="/var/www/bloomstore"
REPO_URL="https://github.com/phuctu1901/web-shop-hoa.git"
BRANCH="main"

echo "🚀 BloomStore Deployment"
echo "========================"

# ---------- 1. Pull latest code ----------
echo "📥 Pulling latest code..."
if [ -d "$APP_DIR" ]; then
    cd "$APP_DIR"
    git pull origin $BRANCH
else
    git clone $REPO_URL $APP_DIR
    cd "$APP_DIR"
fi

# ---------- 2. Copy env file ----------
if [ ! -f "$APP_DIR/.env" ]; then
    echo "⚠️  No .env file found! Copy from .env.example and edit:"
    echo "   cp $APP_DIR/.env.example $APP_DIR/.env"
    echo "   nano $APP_DIR/.env"
    exit 1
fi

# Source env
set -a
source "$APP_DIR/.env"
set +a

# ---------- 3. Start Database ----------
echo "🗄️  Starting MariaDB..."
cd "$APP_DIR"
docker compose up -d

# Wait for DB
echo "⏳ Waiting for database..."
sleep 8

# ---------- 3b. Import Database Dump ----------
DUMP_FILE="$APP_DIR/crawl/dump_bloomstore.sql"
if [ -f "$DUMP_FILE" ]; then
    echo "🗄️  Importing database dump..."
    docker exec -i bloomstore-db mariadb \
        -u"$DB_USER" -p"$DB_PASS" "$DB_NAME" \
        < "$DUMP_FILE" && echo "✅ Database import done!" || echo "⚠️  DB import skipped (data may already exist)"
else
    echo "ℹ️  No dump file found at $DUMP_FILE, skipping import."
fi

# ---------- 4. Build Backend ----------
echo "🔧 Building backend..."
cd "$APP_DIR/backend"
npm ci --production=false
npm run build

# ---------- 5. Build Frontend ----------
echo "🎨 Building frontend..."
cd "$APP_DIR"
npm ci
npm run build

# ---------- 6. Create directories ----------
mkdir -p "$APP_DIR/backend/public/uploads"
mkdir -p "$APP_DIR/logs"

# ---------- 7. Start/Restart with PM2 ----------
echo "🔄 Starting backend with PM2..."
cd "$APP_DIR"
if pm2 describe bloomstore-api > /dev/null 2>&1; then
    pm2 restart ecosystem.config.js
else
    pm2 start ecosystem.config.js
fi
pm2 save

# ---------- 8. Setup Nginx ----------
NGINX_CONF="/etc/nginx/sites-available/bloomstore"
if [ ! -f "$NGINX_CONF" ]; then
    echo "📋 Setting up Nginx..."
    sudo cp "$APP_DIR/nginx/bloomstore.conf" "$NGINX_CONF"
    sudo ln -sf "$NGINX_CONF" /etc/nginx/sites-enabled/bloomstore
    sudo nginx -t && sudo systemctl reload nginx
    echo "✅ Nginx configured"
else
    echo "ℹ️  Nginx config already exists, skipping..."
    sudo nginx -t && sudo systemctl reload nginx
fi

echo ""
echo "✅ Deployment complete!"
echo "========================"
echo "🌐 Frontend: https://shophoa.techcave.space"
echo "🔧 Admin:    https://shophoa.techcave.space/quanly/"
echo "📚 API Docs: https://shophoa.techcave.space/api/docs"
echo ""
echo "📌 Next steps:"
echo "   1. Make sure .env is configured: nano $APP_DIR/.env"
echo "   2. Setup SSL: sudo certbot --nginx -d shophoa.techcave.space"
echo "   3. Check logs: pm2 logs bloomstore-api"
