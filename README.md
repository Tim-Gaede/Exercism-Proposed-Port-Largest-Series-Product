# Largest Series Product

Given a string of digits, calculate the largest product for a contiguous
substring of digits of length n.

For example, for the input `"1027839564"`, the largest product for a
series of 3 digits is 270 (9 × 5 × 6), and the largest product for a
series of 5 digits is 7560 (7 × 8 × 3 × 9 × 5).

Note that these series are only required to occupy *adjacent positions*
in the input; the digits need not be *numerically consecutive*.

For the input `"73167176531330624919225119674426574742355349194934"`,
the largest product for a series of 6 digits is 23520.

## Exception messages

Sometimes it is necessary to raise an exception. When you do this, you should include a meaningful error message to
indicate what the source of the error is. This makes your code more readable and helps significantly with debugging. Not
every exercise will require you to raise an exception, but for those that do, the tests will only pass if you include
a message.

To raise a message with an exception, just write it as an argument to the exception type. For example, you should write:

```julia
throw(DomainError("Meaningful message indicating the source of the error"))
```

## Submitting Exercises

Note that, when trying to submit an exercise, make sure the solution is in the `$EXERCISM_WORKSPACE/julia/largest-series-product` directory.

You can find your Exercism workspace by running `exercism debug` and looking for the line that starts with `Workspace`.

For more detailed information about running tests, code style and linting,
please see [Running the Tests](http://exercism.io/tracks/julia/tests).

## Source

A variation on Problem 8 at Project Euler [http://projecteuler.net/problem=8](http://projecteuler.net/problem=8)

## Submitting Incomplete Solutions

It's possible to submit an incomplete solution so you can see how others have completed the exercise.
