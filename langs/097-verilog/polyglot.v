// polyglot-100 :: entry 097 :: Verilog-2001 testbench
`timescale 1ns / 1ps

module polyglot;
  integer total;
  integer a, b, t;
  integer i, k;

  // Combinational Fibonacci, unrolled into a single function.
  function integer fib(input integer n);
    integer fa, fb, ft, j;
    begin
      fa = 0;
      fb = 1;
      for (j = 0; j < n; j = j + 1) begin
        ft = fa + fb;
        fa = fb;
        fb = ft;
      end
      fib = fa;
    end
  endfunction

  initial begin
    total = 0;
    for (i = 1; i <= 10; i = i + 1) total = total + i;

    a = 0; b = 1;
    for (k = 0; k < 10; k = k + 1) begin
      t = a + b;
      a = b;
      b = t;
    end

    $display("Hello from Verilog!");
    $display("sum(1..10) = %0d", total);
    $display("fib(10)    = %0d", a);
    if (total !== fib(10)) $display("the 55 coincidence failed");
    $finish;
  end
endmodule
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of 100 in the polyglot-100 archive. Family: Frontier 
// Verilog -- entry 097 of
