# syntax=docker/dockerfile:1

# Build Stage
FROM node:22-alpine3.19 AS builder

WORKDIR /app/frontend

COPY package*.json .

RUN npm install

COPY . .

RUN npm run build

# Production Stage

FROM nginx:1.25.4-alpine3.18

COPY --from=builder /app/frontend/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

ENTRYPOINT [ "nginx" , "-g" , "daemon off;"]