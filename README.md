# JavaSecondKill
一个简单的秒杀系统

本项目采用SpringBoot+Mybatis+Redis+Rabbit等核心技术，实现了一个简单的秒杀系统。


目前很多功能还比较缺失，但是基本的秒杀逻辑操作已经可以实现了，大家可以下到本地跑一下试试。



本项目需要本地安装Redis和RabbitMQ，并导入sql文件，rabbitMQ需要新建一个‘miaosha.queue’的队列。


项目启动后，访问路径：http://localhost:8080/login/to_login  默认用户名：13838384438 密码：123456
