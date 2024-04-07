## DISTINCT关键字

作用：用于对显示列进行去重操作。  
原理：
基于5.7.22的解析:
DISTINCT 会对MYSQL返回的结果集进行去重操作，执行计划中会显示，使用到临时表（Using temporary），
DISTINCT 会使用临时表进行去重操作。



