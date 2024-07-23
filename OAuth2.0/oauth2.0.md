# oauth2.0 用户对资源的开放授权协议

## 授权码授权模式：
明确分为以下几种角色：
1. RO: resource owner 资源拥有者。
2. RS：resource server 资源服务器（提供资源拥有者的资源）。
3. AS：authroization server 授权服务器。
4. Client：第三方客户端。

## 基本流程
1. Client请求RO获取授权许可，
2. RO接收到Client后到 AS 获取授权code码，
3. Client接收到Code码之后，通过授权码与ClientIp和Secret获得授权token信息。
4. 受到访问者的控制

