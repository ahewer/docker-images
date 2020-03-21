FROM msp-build:latest AS builder
WORKDIR /root/build
COPY *.sh ./
RUN bash ./pull_mri-shape-tools.sh && bash ./build.sh

FROM msp-runtime:latest
WORKDIR /root/
COPY --from=builder /root/usr /root/usr
COPY *.sh ./
ENV PATH="/root/usr/bin:$PATH" 
RUN bash ./pull_mri-shape-framework.sh && bash ./cleanup.sh
