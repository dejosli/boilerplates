FROM jrottenberg/ffmpeg:4.4-alpine AS FFmpeg
FROM node:lts-alpine

COPY --from=FFmpeg / /

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

WORKDIR /usr/src/app

RUN npm install pm2 -g
RUN npm install node-media-server

ADD app.js .
ADD ecosystem.config.js .

EXPOSE 1935 8000 8443

CMD ["pm2-runtime","ecosystem.config.js"]