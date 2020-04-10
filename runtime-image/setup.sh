apt-get -y update && \
	DEBIAN_FRONTEND=noninteractive TZ=Europe/Berlin apt-get -y --no-install-recommends install \
	openjdk-8-jre-headless \
	python \
	blender \
	git \
	libann0 \
	libarmadillo8 \
	libjsoncpp1 \
	libcairomm-1.0-1v5 \
	libinsighttoolkit4.12 \
	libyaml-cpp0.5v5 \
	locales && \
	apt-get -y autoremove && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* && \
	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
