# 构建
build:
	cd Server; rm -rf pkg bin/room.cafe
	cd Server; go clean -i ./src/room.cafe/...
	cd Server; source env.sh; CGO_ENABLED=0 go install -v ./src/room.cafe/...
