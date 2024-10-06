Docker命令：

端口映射：
docker run -d -p 80:80 --name my3-nginx -v /etc/nginx/nginx.conf:/etc/nginx/nginx.conf nginx
