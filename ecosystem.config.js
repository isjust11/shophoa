const fs = require('fs');
const path = require('path');

// Load .env file (root-level) into env object
function loadEnv() {
    const envPath = path.resolve(__dirname, '.env');
    const env = {
        NODE_ENV: 'production',
        PORT: '3000',
    };
    try {
        const content = fs.readFileSync(envPath, 'utf-8');
        content.split('\n').forEach((line) => {
            const trimmed = line.trim();
            if (trimmed && !trimmed.startsWith('#')) {
                const [key, ...vals] = trimmed.split('=');
                if (key && vals.length) {
                    env[key.trim()] = vals.join('=').trim();
                }
            }
        });
    } catch (e) {
        console.warn('Warning: .env file not found at', envPath);
    }
    return env;
}

const env = loadEnv();

module.exports = {
    apps: [
        // ================================================================
        // Backend NestJS API + Frontend React (served bởi NestJS)
        // - API:      http://localhost:3000/api/...
        // - Frontend: http://localhost:3000/
        // - Admin:    http://localhost:3000/quanly/
        // - Uploads:  http://localhost:3000/uploads/
        //
        // PORT được load từ .env (mặc định 3000)
        // ================================================================
        {
            name: 'bloomstore-api',
            cwd: path.resolve(__dirname, 'backend'),
            script: 'dist/main.js',
            instances: 1,
            autorestart: true,
            watch: false,
            max_memory_restart: '512M',
            env: env,
            error_file: path.resolve(__dirname, 'logs/api-error.log'),
            out_file: path.resolve(__dirname, 'logs/api-out.log'),
            log_date_format: 'YYYY-MM-DD HH:mm:ss',
        },
    ],
};
