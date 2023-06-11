
FROM node:lts-alpine
WORKDIR "/koishi"
ADD ./ /koishi
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk add --no-cache chromium nss freetype harfbuzz ca-certificates ttf-freefont font-noto-cjk
RUN npm install -g yarn
RUN npm config set registry https://registry.npmmirror.com
RUN npm install
VOLUME ["/koishi/data"]
CMD ["yarn", "start"]
