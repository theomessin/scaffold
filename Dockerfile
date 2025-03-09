FROM node:alpine

RUN apk upgrade --no-cache && apk add dumb-init
ENTRYPOINT ["/usr/bin/dumb-init", "--"]

WORKDIR /app
RUN npm install -g pnpm

COPY package.json pnpm-lock.yaml .
RUN pnpm install --prod

COPY src src

ENV NODE_OPTIONS="--disable-warning=ExperimentalWarning"
CMD ["pnpm", "start"]

