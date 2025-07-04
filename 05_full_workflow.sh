#!/bin/bash
git checkout -b feature/loan-calculator
mkdir -p src test

# Test
cat <<EOF > test/loan.test.js
const calcLoan = require('../src/loan');

test('calculate loan with interest', () => {
  expect(calcLoan(10000, 5, 1)).toBeCloseTo(10500);
});
EOF

# Implementacja
cat <<EOF > src/loan.js
function calcLoan(principal, rate, years) {
  return principal * (1 + rate / 100 * years);
}
module.exports = calcLoan;
EOF

git add .
git commit -m "feat: add loan calculator"
git push -u origin feature/loan-calculator
