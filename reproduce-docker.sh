#!/bin/sh

docker build . --tag tmp

# expected 3 tests
docker run -it --rm tmp node_modules/.bin/cucumber-js test/features/
# expected 1 test
docker run -it --rm tmp node_modules/.bin/cucumber-js test/features/ --tags @runme
# expected 2 tests
docker run -it --rm tmp node_modules/.bin/cucumber-js test/features/ --tags ~@skip
# expected 2 tests
docker run -it --rm tmp node_modules/.bin/cucumber-js test/features/ --tags @runme,@skip
