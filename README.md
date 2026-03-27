# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Collin Green
## Summary
In this lab, we learned the importance of a latch mechanic by setting up rudementary, small scale memory. The latch we used assigned our output to an input value when a certain criteria was met, otherwise completing another operation. We used concepts from the past lab as well to set up four serarate memory blocks, using a mux and demux to configure remembering the bit that is stored and storing it itself. 
## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
structural verilog can cause fundemental issues when coding latches. In structural verilog, you are wiring and instantiating modules together, which can cause a plethora of problems when synthesizing a project. Latches require a feedback loop, or an eventual dependence of a variable on itself in a cyclical fastion, which structural verilog cannot represent without causing trouble in synthesis and beyond. 
### What is the meaning of always @(*) in a sensitivity block?

### What importance is memory to digital circuits?
