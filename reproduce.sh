#!/bin/sh

docker build . --tag tmp
docker run -it --rm tmp npm run test-all
docker run -it --rm tmp npm run test-runme
docker run -it --rm tmp npm run test-skip
docker run -it --rm tmp npm run test-skipandrunme
