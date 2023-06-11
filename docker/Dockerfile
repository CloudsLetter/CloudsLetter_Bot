
FROM node:lts-alpine
WORKDIR "/koishi"
ADD ./ /koishi
COPY ./entrypoint.sh /
RUN apk add --no-cache chromium nss freetype harfbuzz ca-certificates ttf-freefont font-noto-cjk
RUN npm install -g yarn
RUN yarn
VOLUME ["/koishi/data"]
CMD ["yarn", "start"]
