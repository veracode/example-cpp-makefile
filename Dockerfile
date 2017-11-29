FROM gcc:latest

RUN mkdir -p /projects/example-cpp-makefile

COPY . /projects/example-cpp-makefile

ENTRYPOINT /projects/example-cpp-makefile/scan.sh