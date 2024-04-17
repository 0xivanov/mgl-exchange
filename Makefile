pull:
	docker pull mysql

runDb:
	docker run --name mgldefi -e MYSQL_ROOT_PASSWORD=mglFuture7@$ -p 3306:3306 -d mysql

sqlShell:
	docker exec -it mgldefi mysql -u root -p

createDb:
	mysql -u root -pmglFuture7@$ -e "CREATE DATABASE IF NOT EXISTS mgldefi;"

sqlCopy:
	docker cp backend/src/db/new_mgldefi.sql container_id:init.sql

dockerBash:
	docker exec -it mgldefi bash

runSqlScript:
	mysql -u root -pmglFuture7@$ mgldefi < init.sql
