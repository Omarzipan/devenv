
.PHONY mysql:
mysql:
	docker-compose up -d mysql
	./scripts/mysql-login.sh
