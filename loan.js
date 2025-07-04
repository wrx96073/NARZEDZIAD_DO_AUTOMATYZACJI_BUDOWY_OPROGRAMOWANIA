function calcLoan(principal, rate, years) {
  return principal * (1 + rate / 100 * years);
}
module.exports = calcLoan;
