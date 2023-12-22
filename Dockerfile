FROM nginx:1.22.0

# 安装 curl 工具
RUN apt-get update && apt-get install -y curl && apt-get clean

COPY nginx.conf /etc/nginx/conf.d/default.conf
