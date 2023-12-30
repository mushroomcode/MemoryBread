Docker命令：

端口映射：
docker run -d -p 80:80 --name my-nginx -v /path/to/nginx.conf:/etc/nginx/nginx.conf nginx
