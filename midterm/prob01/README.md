## Problem: Design of a 3-Input Combinational Logic Module

Design a `comb3i2o` Verilog module stored in a file named `comb3i2o.v`. This module should accept three input bits `a`, `b`, and `c`, and produce two outputs `x` and `y` based on specified logic derived from a truth table.

### Specifications:
- **Module Interface:**
```verilog
module comb3i2o(
    input a,
    input b,
    input c,
    output reg x,
    output reg y
);

// Add your code here

endmodule
```

### Requirements:
- **Inputs:** Three single-bit inputs `a`, `b`, and `c`.
- **Outputs:** Two single-bit outputs `x` and `y`.

### Logic Specification (Truth Table):

| a | b | c |   x   |   y   |
|---|---|---|-------|-------|
| 0 | 0 | 0 |   0   |   1   |
| 0 | 0 | 1 |   1   |   0   |
| 0 | 1 | 0 |   1   |   1   |
| 0 | 1 | 1 |   0   |   0   |
| 1 | 0 | 0 |   1   |   0   |
| 1 | 0 | 1 |   0   |   1   |
| 1 | 1 | 0 |   0   |   0   |
| 1 | 1 | 1 |   1   |   1   |

