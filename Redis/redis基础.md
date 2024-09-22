在docker中使用Redis

1.启用命令：
docker run --name redis_bs -d -p 6379:6379 redis

(使用redis-stack)
docker run -d --name redis-stack-server -p 6379:6379 redis

2.启用客户端：
docker exec -it redis_bs redis-cli

3.macbook 本地连接（记得开aliyun的网口）
redis-cli -h 47.115.204.11 -p 6379


