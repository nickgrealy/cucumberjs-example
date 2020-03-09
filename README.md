# cucumberjs-example

Attempting to reproduce issue with using `--tags`...

1. Excluding tags - e.g. `--tags ~@skip`
2. Jointing tags - e.g. `--tags @runme,@skip`

I worked out the tags syntax has been updated -> https://cucumber.io/docs/cucumber/api/#tag-expressions

# To run locally

Here are the examples of how to use tags:

```
npm install

# expected 3 tests
node_modules/.bin/cucumber-js test/features/ # works!
# expected 1 test
node_modules/.bin/cucumber-js test/features/ --tags @runme # works!
# expected 2 tests
node_modules/.bin/cucumber-js test/features/ --tags ~@skip      # does't work
node_modules/.bin/cucumber-js test/features/ --tags "not @skip" # works!
# expected 2 tests
node_modules/.bin/cucumber-js test/features/ --tags @runme,@skip        # doesn't work
node_modules/.bin/cucumber-js test/features/ --tags @runme --tags @skip # doesn't work
node_modules/.bin/cucumber-js test/features/ --tags "@runme or @skip"   # works!
```
