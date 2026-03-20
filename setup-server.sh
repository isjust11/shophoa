#!/bin/bash
set -e

# =============================================
# BloomStore - Server Setup Script
# VPS: 45.76.158.89
# Domain: shophoa.techcave.space
# Run as root on a fresh Ubuntu/Debian VPS
# =============================================

APP_DIR="/var/www/bloomstore"
REPO_URL="https://github.com/phuctu1901/web-shop-hoa.git"
DOMAIN="shophoa.techcave.space"
RUNNER_USER="runner"

echo "🚀 BloomStore Server Setup"
echo "=========================="

# ---------- 1. System Update ----------
echo "📦 Updating system packages..."
apt-get update && apt-get upgrade -y

# ---------- 2. Install essentials ----------
echo "🔧 Installing essentials..."
apt-get install -y curl wget git build-essential software-properties-common ca-certificates gnupg lsb-release unzip jq

# ---------- 3. Install Node.js 20 ----------
echo "📗 Installing Node.js 20..."
if ! command -v node &> /dev/null; then
    curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
    apt-get install -y nodejs
fi
echo "Node.js version: $(node -v)"
echo "npm version: $(npm -v)"

# ---------- 4. Install PM2 ----------
echo "⚡ Installing PM2..."
npm install -g pm2

# ---------- 5. Install Nginx ----------
echo "🌐 Installing Nginx..."
apt-get install -y nginx
systemctl enable nginx
systemctl start nginx

# ---------- 6. Install Docker ----------
echo "🐳 Installing Docker..."
if ! command -v docker &> /dev/null; then
    curl -fsSL https://get.docker.com | sh
    systemctl enable docker
    systemctl start docker
fi
echo "Docker version: $(docker --version)"

# ---------- 7. Clone repo ----------
echo "📥 Cloning repository..."
if [ -d "$APP_DIR" ]; then
    echo "Directory exists, pulling latest..."
    cd "$APP_DIR"
    git pull origin main
else
    git clone "$REPO_URL" "$APP_DIR"
    cd "$APP_DIR"
fi

# ---------- 8. Create .env ----------
if [ ! -f "$APP_DIR/.env" ]; then
    echo "📋 Creating .env from example..."
    cp "$APP_DIR/.env.example" "$APP_DIR/.env"
    # Generate a random JWT secret
    JWT_SECRET=$(openssl rand -hex 32)
    sed -i "s/your-very-secure-jwt-secret-change-this/$JWT_SECRET/" "$APP_DIR/.env"
    echo "✅ .env created with random JWT secret"
    echo "⚠️  Review and edit if needed: nano $APP_DIR/.env"
fi

# Source env
set -a
source "$APP_DIR/.env"
set +a

# ---------- 9. Start Database ----------
echo "🗄️  Starting MariaDB..."
cd "$APP_DIR"
docker compose up -d

echo "⏳ Waiting for database to be ready..."
sleep 10

# ---------- 10. Build Backend ----------
echo "🔧 Building backend..."
cd "$APP_DIR/backend"
npm ci --production=false
npm run build

# ---------- 11. Build Frontend ----------
echo "🎨 Building frontend..."
cd "$APP_DIR"
npm ci
npm run build

# ---------- 12. Create directories ----------
mkdir -p "$APP_DIR/backend/public/uploads"
mkdir -p "$APP_DIR/logs"

# ---------- 13. Start with PM2 ----------
echo "🔄 Starting backend with PM2..."
cd "$APP_DIR"
pm2 start ecosystem.config.js
pm2 save
pm2 startup systemd -u root --hp /root

# ---------- 14. Setup Nginx ----------
echo "📋 Setting up Nginx..."
# Remove default site
rm -f /etc/nginx/sites-enabled/default

cp "$APP_DIR/nginx/bloomstore.conf" /etc/nginx/sites-available/bloomstore
ln -sf /etc/nginx/sites-available/bloomstore /etc/nginx/sites-enabled/bloomstore
nginx -t && systemctl reload nginx
echo "✅ Nginx configured"

# ---------- 15. Install Certbot & SSL ----------
echo "🔒 Installing Certbot..."
apt-get install -y certbot python3-certbot-nginx
echo "🔒 Obtaining SSL certificate..."
certbot --nginx -d "$DOMAIN" --non-interactive --agree-tos --register-unsafely-without-email || {
    echo "⚠️  Certbot failed. Make sure DNS for $DOMAIN points to this server."
    echo "   Run manually later: certbot --nginx -d $DOMAIN"
}

# ---------- 16. Setup GitHub Actions Runner ----------
echo "🤖 Setting up GitHub Actions self-hosted runner..."

# Create runner user
if ! id "$RUNNER_USER" &>/dev/null; then
    useradd -m -s /bin/bash "$RUNNER_USER"
    usermod -aG docker "$RUNNER_USER"
fi

# Give runner user access to app directory
chown -R "$RUNNER_USER:$RUNNER_USER" "$APP_DIR"

# Allow runner to reload nginx without password
echo "$RUNNER_USER ALL=(ALL) NOPASSWD: /usr/bin/nginx, /usr/sbin/nginx, /bin/systemctl reload nginx, /bin/systemctl restart nginx" > /etc/sudoers.d/runner-nginx
chmod 440 /etc/sudoers.d/runner-nginx

# Allow runner to use pm2
su - "$RUNNER_USER" -c "pm2 startup systemd -u $RUNNER_USER --hp /home/$RUNNER_USER" || true

# Copy PM2 process list to runner user
cd "$APP_DIR"
pm2 delete all || true
su - "$RUNNER_USER" -c "cd $APP_DIR && pm2 start ecosystem.config.js && pm2 save"

RUNNER_DIR="/home/$RUNNER_USER/actions-runner"
mkdir -p "$RUNNER_DIR"
cd "$RUNNER_DIR"

# Download latest runner
RUNNER_VERSION=$(curl -s https://api.github.com/repos/actions/runner/releases/latest | jq -r '.tag_name' | sed 's/v//')
ARCH=$(dpkg --print-architecture)
if [ "$ARCH" = "amd64" ]; then
    RUNNER_ARCH="x64"
elif [ "$ARCH" = "arm64" ]; then
    RUNNER_ARCH="arm64"
else
    RUNNER_ARCH="x64"
fi

curl -o actions-runner.tar.gz -L "https://github.com/actions/runner/releases/download/v${RUNNER_VERSION}/actions-runner-linux-${RUNNER_ARCH}-${RUNNER_VERSION}.tar.gz"
tar xzf actions-runner.tar.gz
rm -f actions-runner.tar.gz
chown -R "$RUNNER_USER:$RUNNER_USER" "$RUNNER_DIR"

echo ""
echo "============================================"
echo "✅ Server setup almost complete!"
echo "============================================"
echo ""
echo "🔑 NEXT STEP: Configure the GitHub Actions runner"
echo ""
echo "   1. Go to: https://github.com/phuctu1901/web-shop-hoa/settings/actions/runners/new"
echo "   2. Copy the registration token"
echo "   3. Run these commands on the server:"
echo ""
echo "   su - $RUNNER_USER"
echo "   cd $RUNNER_DIR"
echo "   ./config.sh --url https://github.com/phuctu1901/web-shop-hoa --token YOUR_TOKEN --name bloomstore-vps --labels self-hosted,linux --unattended"
echo "   exit"
echo ""
echo "   4. Then install as a service (as root):"
echo "   cd $RUNNER_DIR"
echo "   ./svc.sh install $RUNNER_USER"
echo "   ./svc.sh start"
echo ""
echo "🌐 Frontend: http://$DOMAIN"
echo "🔧 API Docs: http://$DOMAIN/api/docs"
echo "📌 SSL:      certbot --nginx -d $DOMAIN (if not done)"
echo ""
