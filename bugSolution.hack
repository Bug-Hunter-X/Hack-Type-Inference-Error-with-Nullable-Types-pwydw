function foo(x: ?int): int {
  if (x == null) {
    return 0;
  } else {
    return x + 1;
  }
}

function bar(): void {
  $x = foo(null);
  echo $x; // This line will work now
}

This corrected code explicitly states that the variable $x will be an int. This way, the Hack type system correctly infers the type and doesn't produce an error.
By providing explicit typing, you are helping the type system, avoiding potential unexpected behavior.

In general, always explicitly define types whenever possible in your Hack code. This practice helps prevent runtime errors and improves the overall clarity and maintainability of your programs.
