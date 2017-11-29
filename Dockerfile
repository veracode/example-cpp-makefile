FROM gcc:latest

RUN mkdir -p /projects/example-cpp-makefile

COPY . /projects/example-cpp-makefile

RUN cd

ENTRYPOINT /projects/example-cpp-makefile/scan.sh