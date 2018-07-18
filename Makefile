user ?= admin
port ?= 2222
host ?= 192.168.1.1
opts ?= -i ~/.ssh/rtnt66u_rsa

.PHONY: all
all:
	scp ${opts} -P${port} ./wan-start ${user}@${host}:/jffs/scripts
	ssh ${opts} -p${port} ${user}@${host} chmod a+rx /jffs/scripts/*
