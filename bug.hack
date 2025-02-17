function foo(x: ?int): int {
  if (x == null) {
    return 0;
  } else {
    return x + 1;
  }
}

function bar(): void {
  $x = foo(null);
  echo $x;
}

This code is an example of a common error that may occur when working with nullable types in Hack. In this code, the function foo() expects an integer or null as input, and returns an integer. If the input is null, the function returns 0. Otherwise, it returns x + 1. The function bar() calls the function foo() with a null value, and then outputs the result using the echo statement.

However, this code will produce an error when executed because Hack's type system cannot accurately infer the type of $x within the bar() function. The type of $x is initially unknown until the function foo() is called. Once the function foo() is called, Hack's type system can then determine that $x is an int.

This error can be fixed by explicitly specifying the type of the variable $x in the bar() function.
