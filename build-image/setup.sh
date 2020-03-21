apt-get -y update && \
	DEBIAN_FRONTEND=noninteractive TZ=Europe/Berlin apt-get -y install \
	git \
	build-essential \
	r-base \
	r-recommended \
	libann-dev \
	libarmadillo-dev \
	cmake \
	libjsoncpp-dev \
	pkg-config \
	libgtkmm-3.0-dev \
	libcairomm-1.0-dev \
	libinsighttoolkit4-dev \
	libyaml-cpp-dev &&
	apt-get -y autoremove && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*
