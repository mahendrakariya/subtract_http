USERNAME=mahendrakariya
IMAGE=subtract_http
VERSION=0.0.1

build:
	go build -o subtract_http .

docker-build: build
	docker build -t $(USERNAME)/$(IMAGE):$(VERSION) .

docker-run: docker-build
	docker run -p 3003:4567 --name addhost --network host $(USERNAME)/$(IMAGE):$(VERSION)

docker-push: docker-build
	docker push $(USERNAME)/$(IMAGE):$(VERSION)
