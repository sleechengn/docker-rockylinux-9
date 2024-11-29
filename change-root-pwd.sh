#!/usr/bin/bash

# 如果存在环境变量ROOT_PASSWORD，则修改root密码为环境变量ROOT_PASSWORD的值

if [ $ROOT_PASSWORD ]; then
	echo root:$ROOT_PASSWORD|chpasswd
fi
