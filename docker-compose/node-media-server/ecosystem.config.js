module.exports = {
  apps: [
    {
      name: 'nms',
      script: './app.js',
      instances: 1,
      exec_mode: 'fork',
      watch: false,
      autorestart: true,
      max_auto_restart: '12GB',
      restart_delay: 0,
      time: true,
      log_type: 'format',
      log_date_format: 'DD-MM-YYYY HH:mm Z',
      out_file: '/dev/null',
      error_file: '/dev/null',
      pid_file: '/home/admin/.pm2/logs/nms.pid',
      log_file: '/home/admin/.pm2/logs/nms.log',
      node_args: ['--max-old-space-size=13312'], // increase to 13GB
    },
  ],
};
