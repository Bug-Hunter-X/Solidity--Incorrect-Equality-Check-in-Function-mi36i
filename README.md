# Solidity Bug: Incorrect Equality Check

This repository demonstrates a common bug in Solidity: using `==` instead of `===` for equality checks.  The `==` operator performs type coercion, which can lead to unexpected results, particularly when comparing different data types or values that might implicitly convert to the same type but are logically distinct. This example illustrates this vulnerability and provides a corrected version.

## Bug Description
The original Solidity function `myFunc` uses the `==` operator to compare two arguments. This can lead to unexpected results because `==` is not a strict equality check.  Specifically, in the context of the code, if `a` and `b` are of different types but have the same underlying value after type conversion, `==` will incorrectly evaluate to `true`. This could have unforeseen effects in smart contracts where strict equality checking is essential for security and correctness.