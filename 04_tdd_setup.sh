#!/bin/bash
mkdir -p src test
npm init -y
npm install --save-dev jest

# Test
cat <<EOF > test/calculator.test.js
const add = require('../src/calculator');

test('adds 2 + 2 = 4', () => {
  expect(add(2, 2)).toBe(4);
});
EOF

# Code
cat <<EOF > src/calculator.js
function add(a, b) {
  return a + b;
}
module.exports = add;
EOF

npx jest --coverage
