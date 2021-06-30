# Structural hierarchial description of 16-to-1 multiplexer

**Learning Objective: To understand the concept of behaviral modelling**  
1. Using pure behavioral modelling.
    - Use files *mux16to1_version1.v* and *mux16to1_DUT_version1.v*
2. Structural modelling using 4-to-1 MUX, which is specified using behavioral model
    - Use files *mux16to1_version2.v* , *mux4to1_version1.v*  and *mux16to1_DUT_version2.v*
3. Structural Model of 4-to-1 using behaviral model of 2-to-1 MUX
    - Use files *mux16to1_version2.v* , *mux4to1_version2.v* , *mux2to1_vesrion1.v* and *mux16to1_DUT_version2.v*
4. Finally making structural gate-level modelling of 2-to-1 MUX
    - Use files *mux16to1_version2.v* , *mux4to1_version2.v* , *mux2to1_vesrion2.v* and *mux16to1_DUT_version2.v*

**Simulation:**
1.  Follow above instructions to select correct file testbench for simulation
2. Using *iverilog* and *gtkwave*.
3. *gtkwave*  for .vcd files as these files will be generated.