const calcLoan = require('../src/loan');

test('calculate loan with interest', () => {
  expect(calcLoan(10000, 5, 1)).toBeCloseTo(10500);
});
