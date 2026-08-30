FROM node:22.22-bookworm-slim AS base
WORKDIR /app
COPY package.json package-lock.json* ./
RUN npm ci
COPY . .

FROM base AS build
RUN npm run build

FROM nginxinc/nginx-unprivileged:1.29.1-alpine3.22 AS serve
USER root
RUN apk upgrade --no-cache
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 8080
USER 101:101
CMD ["nginx", "-g", "daemon off;"]
