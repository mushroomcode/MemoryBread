#docker-- docker中手工起nginx的步骤
# docker run  -p 8087:8087 --name tcb_nginx -v /root/nginx/nginx_2.conf:/etc/nginx/conf.d
# -v /path/to/nginx/html:/usr/share/nginx/html nginx
docker run --name tcb_nginx -p 8999:8999  -v /root/nginx/nginx_3.conf:/etc/nginx/conf.d  -d nginx:latest
# -v /root/nginx/nginx_2.conf:/etc/nginx/conf.d
docker run -d -p 8999:8999 --name my_nginx_01 nginx  -v /root/nginx/nginx_2.conf:/etc/nginx/conf.d
docker run --name tcb_nginx_14 -p 8999:8999 -v /root/nginx/nginx_3.conf:/etc/nginx/nginx.conf -d nginx

