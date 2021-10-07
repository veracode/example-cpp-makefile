# [:] Example C++ project using Makefile.

An example C++ project using Makefile to demonstrate [SourceClear](https://www.sourceclear.com) scans.

## Install and activate SourceClear
Follow the instructions under the section "Setup and Configuration" in https://www.sourceclear.com/docs/command-line-interface/ to install and activate our SourceClear agent.

## Scan this project
### Linux Users
The latest version of SourceClear agent only supports C++ projects build on Linux platforms. If you are using a Linux OS, you can scan this project by running

`srcclr scan --url https://github.com/srcclr/example-cpp-makefile`

### Non-Linux users
For non-linux users, there is a Dockerfile in this repo that builds a Linux container image with this project in it. The steps to setup and test are as follow:
#### 1. Clone this repo
`git clone https://github.com/srcclr/example-cpp-makefile`

#### 2. Change current directory to the project directory
`cd example-cpp-makefile`

#### 3. Build the Docker image
`docker build . -t example-cpp-makefile`

This builds an image with the name `example-cpp-makefile`.

#### 4. Create and run container with the image
`docker run -e SRCCLR_API_TOKEN=<token> --rm -t --name example-cpp-makefile example-cpp-makefile`

This creates a container with the name `example-cpp-makefile`, runs it and removes it after it has completed.

As shown in the example, setting `SRCCLR_API_TOKEN` to Veracode SCA API token is needed to scan the project.
