# RTL-to-GDSII Implementation of Parameterizable N-Bit Shifter

A complete, automated ASIC design flow executing the structural implementation of a bidirectional, parameterizable N-bit shifter from RTL description to GDSII layout utilizing the **Synopsys Tool Suite**.

## Design Features
* **Architecture:** Parameterizable N-bit shifter supporting logical/arithmetic left and right shifts based on runtime control inputs.
* **HDL:** Modeled entirely in structurally clean, synthesizable Verilog HDL.
* **Target Optimization:** Constrained to balance cell area, power grid macro-placement, and timing margins (zero negative slack).

## ASIC Flow Execution & Toolchain
The design leverages automated TCL scripting to push the design through successive stages of the digital VLSI implementation pipeline:

1. **Synthesis (Synopsys Design Compiler):** Translated Verilog RTL into a technology-mapped gate-level netlist using standard cell libraries. Constrained with realistic input/output delays and clock definitions.
2. **Physical Design (Synopsys IC Compiler):** 
   * **Floorplanning:** Established optimal core/die aspect ratios, row structures, and IO pad ring placements.
   * **Placement & Macro Management:** Executed standard cell placement while avoiding congestion and maintaining high utilization bounds.
   * **Clock Tree Synthesis (CTS):** Built balanced clock trees to minimize skew and insertion delay.
   * **Routing:** Completed global and detail routing under strict design rule checking (DRC) parameters.
3. **Static Timing Analysis (Synopsys PrimeTime):** Performed comprehensive post-route timing verification across setup and hold constraints to guarantee clean timing margins and positive slack.

## Repository Structure
* `/rtl`: Synthesizable Verilog HDL source code for the shifter architecture.
* `/constraints`: Synopsys Design Constraints (`.sdc`) defining timing, clock gating, and boundary conditions.
* `/scripts`: Automated TCL scripts governing execution setups for `dc_shell`, `icc_shell`, and `pt_shell`.
