#!/bin/bash


environment='Testing'

if [ $environment == "Production" ];then
	echo $environment
elif [ $environment == 'Development' ];then
	echo $environment
    docker-compose -f docker-compose.yml -f docker-compose.development.yml up -d --build
elif [ $environment == 'Testing' ];then
	echo $environment
elif [ $environment == 'Staging' ];then
	echo $environment
else
	echo $environment
    echo 当前环境变量未配置任何执行命令
fi
