## Design of a 4-Input Filter Module

Design a `myfilter` Verilog module stored in a file named `myfilter.v`. This module should accept four input bits `a`, `b`, `c`, and `d`, and produce three outputs `w`, `x`, `y`, and `z` based on four sets of specified random logic rules.

### Specifications:
- **Module Interface:**
```verilog
module myfilter(
    input a,
    input b,
    input c,
    input d,
    output reg w,
    output reg x,
    output reg y,
    output reg z
);

// Add your code here

endmodule
```

### Requirements:
- **Inputs:** Four single-bit inputs `a`, `b`, `c`, and `d`.
- **Outputs:** Four single-bit outputs `w`, `x`, `y`, and `z`.

### Logic Rules:

1. **Rule for Output `w`:** Output `w` should be high if both inputs `a` and `b` are high.
2. **Rule for Output `x`:** Output `x` should be high if inputs `c` and `d` are the same.
3. **Rule for Output `y`:** Output `y` should be high if there is an even number of `1`s among inputs `a`, `b`, and `c`.
4. **Rule for Output `z`:** Output `z` should be high if exactly one of the inputs `a`, `b`, `c`, or `d` is high.


