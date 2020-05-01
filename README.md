# Docker images for the MRI framework

## Introduction

This repository offers shell scripts for assembling docker images that contain everything you need for using our [MRI shape framework](https://github.com/ahewer/mri-shape-framework).
In particular, the scripts take care of resolving and compiling the dependencies needed for the framework to run.

## Requirements

Please make sure that the following software is available:

- [Docker](https://www.docker.com/)
- a terminal emulator that can handle shell scripts

## Creating the images

Run the command

```sh
sh ./build.sh
```

to create the following images:

- msp-build

  Image containing all necessary dependencies for compiling the required [MRI shape tools](https://github.com/ahewer/mri-shape-tools).

- msp-runtime

  Image containing all necessary dependencies for running the required [MRI shape tools](https://github.com/ahewer/mri-shape-tools).

- msp-framework

  Main image that contains everything you need to run the framework.

## Using the main image 

The container running the *msp-framework* image can be given access to the data to be processed by using volume bindings.
Furthermore, the output folder also can be bound to a volume of the container in order to access it in the host file system.
Assuming the all required information for the framework (please consult the [documentation](https://github.com/ahewer/mri-shape-framework) of the framework for details) is located in the current folder, the following command runs the container in interactive mode and binds the necessary data to the correct volumes:

```sh
docker run -it \
	-v ${PWD}/resources/mri:/root/mri-shape-framework/resources/mri \
	-v ${PWD}/configuration:/root/mri-shape-framework/configuration \
	-v ${PWD}/resources/landmarksPalate:/root/mri-shape-framework/resources/landmarksPalate \
	-v ${PWD}/resources/landmarksTongue:/root/mri-shape-framework/resources/landmarksTongue \
	-v ${PWD}/resources/landmarksAlignment:/root/mri-shape-framework/resources/landmarksAlignment \
	-v ${PWD}/build:/root/mri-shape-framework/build \
	msp-framework:latest /bin/bash
```

The output is saved in the *build* folder of the current directory.
Inside the container, switch to the *mri-shape-framework* folder and run any framework task you need.
For example, run the following command to build a tongue model:

```sh
./gradlew createTongueModel
```

## Example

Have a look at the [example](./example) that uses the [example MRI data](https://github.com/m2ci-msp/mri-shape-framework-example-data).
