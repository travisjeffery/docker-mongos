.PHONY: build
build:
	docker build -t travisjeffery/mongos:1.0.0 .


push:
	docker push travisjeffery/mongos:1.0.0
