const fs = require('fs');
const path = require('path');

// Load .env file into env object
function loadEnv() {
    const envPath = path.resolve(__dirname, '.env');
    const env = {
        NODE_ENV: 'production',
        PORT: 3000,
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

module.exports = {
    apps: [
        {
            name: 'bloomstore-api',
            cwd: './backend',
            script: 'dist/main.js',
            instances: 1,
            autorestart: true,
            watch: false,
            max_memory_restart: '512M',
            env: loadEnv(),
            error_file: './logs/api-error.log',
            out_file: './logs/api-out.log',
            log_date_format: 'YYYY-MM-DD HH:mm:ss',
        },
    ],
};
