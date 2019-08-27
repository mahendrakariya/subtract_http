build:
	gradle clean build jar
docker-build:
	docker build -t subtract_grpc .
docker-run:
	docker run -p 3003:4567 subtract_grpc
