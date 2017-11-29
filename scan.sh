#!/usr/bin/env bash
set -e

LATEST_VERSION=$(curl https://download.sourceclear.com/LATEST_VERSION)

curl -o /srcclr.tgz https://download.srcclr.com/srcclr-$LATEST_VERSION-linux.tgz

mkdir /srcclr
tar -xzf /srcclr.tgz -C /srcclr
mkdir /srcclr/bin
ln -s /srcclr/srcclr-*/bin/srcclr /srcclr/bin/srcclr
export PATH="/srcclr/bin:$PATH"

srcclr scan /projects/example-cpp-makefile