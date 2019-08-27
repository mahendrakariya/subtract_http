build:
	gradle clean build jar
docker-build:
	docker build -t subtract_http .
docker-run:
	docker run -p 3003:4567 --network host subtract_http
