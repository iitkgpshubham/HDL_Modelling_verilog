# 16-bit adder design

**Learning Objective: To understand hierarchial design methodology, behavioral modelling, structural modelling. Flag bits are also generated : Sign, Zero, Carry, Parity, Overflow. Behavioral modelling of Look-ahead carry adder is also designed.**

1. Behavioral model of 16-bit adder
    - *16bit_adder_version1.v*
2. Structural model of 16-bit adder(ripple carry) using behavioral model of 4-bit adder
    - *16bit_adder_version2.v* , *4bit_adder_version1.v*
3. Structural model of 16-bit adder(ripple carry) using structural model of 4-bit adder(ripple carry) using fulladder(gate level)
    - *16bit_adder_version2.v* , *4bit_adder_version2.v*, *fulladder.v* 
4. Structuural model of 16-bit adder(ripple carry) using structural model of 4-bit *look ahead carry* adder.
    - *16bit_adder_version2.v* , *4bit_adder_version3.v*

Test Bench : *16bit_adder_DUT.v*
