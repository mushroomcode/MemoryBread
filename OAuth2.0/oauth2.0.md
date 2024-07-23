# oauth2.0 用户对资源的开放授权协议

## 授权码授权模式：
明确分为以下几种角色：
1. RO: resource owner 资源拥有者。
2. RS：resource server 资源服务器（提供资源拥有者的资源）。
3. AS：authroization server 授权服务器。
4. Client：第三方客户端。

## 基本流程
1. Client请求RO获取授权许可，
2. RO接收到Client请求后，点击同意（微信公众号没有这一步，
   可能是因为管理者预先在公众号内添加了信任的url）
   到 AS 获取授权code码，
3. Client接收到Code码之后，通过授权码与ClientIp和Secret，
   加上重定向后的URI，发送请求到 AS 获得授权访问的token信息。
4. Client接收到token后（令牌信息），即可以持有令牌访问RS。

