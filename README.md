## 这是一个Nginx反向代理的示例

`docker build -t mynginx .`

```
// 创建Nginx in Docker
docker run --network shared_network \
--name myproxy -d \
-p 80:80 -p 443:443 \
--volume /home/roiyin/nginx_cert:/etc/nginx/certificates \
mynginx

// 创建Halo in Dokcer
docker run --network shared_network \
-d --name halo -p 8090:8090 \
-v ~/.halo2:/root/.halo2 halohub/halo:2.11
```

需要将 `/home/roiyin/nginx_cert` 换成自己申请证书所在的目录。

**注意：需要将80和443端口提前打开。**