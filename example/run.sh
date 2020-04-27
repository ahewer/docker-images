docker run -it \
	-v ${PWD}/resources/mri:/root/mri-shape-framework/resources/mri \
	-v ${PWD}/configuration:/root/mri-shape-framework/configuration \
	-v ${PWD}/resources/landmarksPalate:/root/mri-shape-framework/resources/landmarksPalate \
	-v ${PWD}/resources/landmarksTongue:/root/mri-shape-framework/resources/landmarksTongue \
	-v ${PWD}/resources/landmarksAlignment:/root/mri-shape-framework/resources/landmarksAlignment \
	-v ${PWD}/build:/root/mri-shape-framework/build \
	msp-framework:latest /bin/bash
