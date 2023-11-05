module.exports = {
  apps: [
    {
      name: 'nms',
      script: './app.js',
      instances: 1,
      exec_mode: 'fork',
      watch: false,
      autorestart: true,
      time: true,
      log_type: 'format',
      log_date_format: 'DD-MM-YYYY HH:mm Z',
      out_file: '/dev/null',
      error_file: '/dev/null',
      pid_file: '/var/log/.pm2/logs/nms.pid',
      log_file: '/var/log/.pm2/logs/nms.log',
    },
  ],
};
