FROM ubuntu:16.04

RUN apt-get update && \
	apt-get install -y \
		python2.7 \
		python-dev \
		python-pip && \
	pip install \
		--upgrade pip==20.3.4 && \
	pip install pbr && \
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
