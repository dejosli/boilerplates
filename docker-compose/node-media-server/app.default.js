const NodeMediaServer = require('node-media-server');

const config = {
  rtmp: {
    port: 1935,
    chunk_size: 40000,
    gop_cache: true,
    ping: 60,
    ping_timeout: 30,
  },
  http: {
    port: 8000,
    allow_origin: '*',
  },
  // Config https
  // https: {
  //     port: 8443,
  //     key: './privatekey.pem',
  //     cert: './certificate.pem',
  // }

  // Authentication
  // auth: {
  //     play: true,
  //     publish: true,
  //     secret: 'nodemedia2017privatekey'
  //     api: true, // Protected API
  //     api_user: 'admin',
  //     api_pass: 'nms2023',
  // }
};

let nms = new NodeMediaServer(config);
nms.run();
