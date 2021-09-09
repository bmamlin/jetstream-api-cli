FROM ubuntu:20.04

RUN apt-get update && \
	apt-get install -y \
	python3 \
	python-dev \
	python3-pip && \
	pip install \
	--upgrade pip && \
	pip install \
	python-keystoneclient \
	python-novaclient \
	python-heatclient \
	python-swiftclient \
	python-neutronclient \
	python-cinderclient \
	python-glanceclient \
	python-openstackclient

CMD ["/bin/bash"]
