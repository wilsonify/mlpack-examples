
mlpack-examples-base:
	docker build -t mlpack-examples-base -f Dockerfile-base .

mlpack-examples-builder:
	docker build -t mlpack-examples-builder -f Dockerfile-builder .

stop:
	docker stop mlpack-examples-builder
run:
	docker run --rm --name mlpack-examples-builder \
	-v /home/thom/repos/mlpack-examples:/root/mlpack-examples \
	--network host \
	-it \
	mlpack-examples-builder:latest jupyter notebook --allow-root