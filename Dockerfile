FROM tensorflow/tensorflow:latest-gpu

RUN apt-get update && apt-get install -y net-tools traceroute vim iputils-ping wget curl

ADD MNIST_data /notebooks/MNIST_data

ADD mnist-dis.py /notebooks/mnist-dis.py

CMD ["/bin/bash"]
