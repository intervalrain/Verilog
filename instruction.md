1. write module (*.v)
2. write test bench (*_tb.v)
3. command `iverilog -o *_tb.vvp *_tb.v`
4. command `vvp *_tb.vvp`
5. open gtkwave and run test.