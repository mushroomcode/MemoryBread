### RPC是一种通讯协议

## 定义：
是一种通过网络请求远端计算机上服务和资源的协议，无需了解底层协议。
## 引用：
《Implementing remote procedure calls》 
RPC 是远程过程调用（Remote Procedure Call）的缩写形式，Birrell 和 Nelson 在 1984 发表于 ACM Transactions on Computer Systems 的论文《Implementing remote procedure calls》对 RPC 做了经典的诠释。RPC 是指计算机 A 上的进程，调用另外一台计算机 B 上的进程，其中 A 上的调用进程被挂起，
而 B 上的被调用进程开始执行，当值返回给 A 时，A 进程继续执行。调用方可以通过使用参数将信息传送给被调用方，而后可以通过传回的结果得到信息。而这一过程，对于开发人员来说是透明的。

Client A -> Server B
Client A -> Client Sub -> Server Sub -> Server B



