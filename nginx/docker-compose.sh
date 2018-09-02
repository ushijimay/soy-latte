#! /bin/bash
export TEST1="mari"
export TEST2="tetsuya"
docker build . --build-arg TEST1 --build-arg TEST2
