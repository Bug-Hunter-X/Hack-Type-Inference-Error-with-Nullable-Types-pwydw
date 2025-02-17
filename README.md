# Hack Type Inference Error with Nullable Types

This repository demonstrates a common type inference issue in Hack when dealing with nullable types and function return values. The issue arises when a function can return either an integer or null, and the type system fails to accurately infer the type in certain scenarios. The example showcases the error and provides a solution by explicitly typing the variable.

## Problem

The `bug.hack` file contains a function `foo` that takes an optional integer (`?int`) as input and returns an integer. If the input is null, it returns 0; otherwise, it returns `x + 1`.  The `bar` function calls `foo` with `null` and tries to use the result.  Hack's type system struggles to correctly infer the type of the variable receiving the return value of `foo`.

## Solution

The `bugSolution.hack` file demonstrates the solution. By explicitly declaring the type of the variable receiving the return value of `foo`, the type inference issue is resolved. This clarifies the type for Hack, preventing unexpected errors.
