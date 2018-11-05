# Makefile

.PHONY mysql-login:
mysql-login:
	docker-compose up -d mysql
	./scripts/mysql-up-run.sh mysql -uroot

.PHONY mysql-bash:
mysql-bash:
	docker-compose up -d mysql
	./scripts/mysql-up-run.sh bash
