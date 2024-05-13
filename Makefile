build:
	docker-compose build

build-nc:
	docker-compose build --no-cache

build-progress:
	docker-compose build --no-cache --progress=plain

down:
	docker-compose down --volumes

run:
	make down && docker-compose up

run-scaled:
	make down && docker-compose up --scale spark-worker=3

run-d:
	make down && docker-compose up -d

stop:
	docker-compose stop

submit:
	docker exec da-spark-master spark-submit --master spark://spark-master:7077 --deploy-mode client ./apps/$(app)


submit2:
	docker exec da-spark-master spark-submit --master spark://spark-master:7077 --deploy-mode client /opt/spark/apps/dist/test-1.0-py3-none-any.whl

submit3:
	docker exec da-spark-master spark-submit --master spark://spark-master:7077 --deploy-mode client /opt/spark/apps/spark_test.py

