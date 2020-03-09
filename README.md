# cucumberjs-example

Attempting to reproduce issue with using `--tags`...

1. Excluding tags - e.g. `--tags ~@skip`
2. Jointing tags - e.g. `--tags @runme,@skip`

# To run locally

```
npm i

# expected 3 tests
node_modules/.bin/cucumber-js test/features/
# expected 1 test
node_modules/.bin/cucumber-js test/features/ --tags @runme
# expected 2 tests
node_modules/.bin/cucumber-js test/features/ --tags ~@skip
# expected 2 tests
node_modules/.bin/cucumber-js test/features/ --tags @runme,@skip
```

# To run in docker

```
./reproduce-docker.sh
```