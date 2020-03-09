
const { Then } = require('cucumber')

Then(/^pass test (.*)$/, function (testName) {
    console.log(`run test ${testName}`)
});