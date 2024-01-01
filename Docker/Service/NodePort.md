## NodePort
NodePort是k8s中Service网络负载的一种。

NodePort通过K8s在集群宿主机中设置对外暴露一个特定的端口，并且将这个端口映射到上Selector选择器中的Pod上，使得集群内的Pod实现对外暴露。

当有请求访问服务时：

请求-->Service(NodePort Type Service)-->宿主机端口-->映射的Pod端口-->实际接受任务的Pod。

具体的配置文件：
此外，可以通过配置 SessionAffinity 使得NodePort进行访问Pod的绑定。
