apt-get -y update && \
	DEBIAN_FRONTEND=noninteractive TZ=Europe/Berlin apt-get -y --no-install-recommends install \
	openjdk-8-jre-headless \
	python \
	blender \
	r-base \
	r-recommended \
	git \
	libann0 \
	libarmadillo8 \
	libjsoncpp1 \
	libcairomm-1.0-1v5 \
	libinsighttoolkit4.12 \
	libyaml-cpp0.5v5 && \
	apt-get -y autoremove && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*
