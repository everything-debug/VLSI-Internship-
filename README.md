VLSI Design Internship — Maincrafts Technology

This repository documents my work from a VLSI Design internship, covering foundational digital design concepts and hands-on Verilog HDL implementation of combinational logic circuits.

TASK 1 — UNDERSTANDING VLSI DESIGN FLOW AND DIGITAL LOGIC

Type: Study Guide / Conceptual Report

A foundational guide covering how digital chips move from idea to silicon, and the basic logic building blocks used throughout digital design.

Contents:

1. Introduction to VLSI
What "Very Large Scale Integration" means and why it underlies every modern processor, GPU, and microcontroller.

2. The VLSI Design Flow
A stage-by-stage breakdown of how a chip is built, including:

- Specification — defining requirements (features, speed, power, area)
- Architecture Design — high-level planning of major blocks and their interconnections
- RTL Design — writing the actual Verilog/VHDL code describing hardware behavior
- Functional Verification — simulating and testing the design for correctness
- Logic Synthesis — converting RTL into gate-level logic
- Physical Design — placing and routing gates on silicon
- Static Timing Analysis (STA) — verifying signal timing across the chip
- Fabrication — manufacturing the design on silicon wafers
- Testing and Validation — post-manufacture functional testing
- Packaging — final packaging before shipment

3. Basic Logic Gates
Truth tables and explanations for all seven fundamental gates: AND, OR, NOT, NAND, NOR, XOR, XNOR — including real-world analogies (e.g., series/parallel switches) and notes on NAND/NOR universality.

4. Half Adder Circuit

- Boolean equations: Sum = A XOR B, Carry = A AND B
- Full truth table with case-by-case explanation
- Circuit-level breakdown (XOR + AND gates)
- Discussion of its role as the foundation for full adders and multi-bit arithmetic

5. Key Takeaways
Summary of core concepts connecting the design flow to logic-gate fundamentals, setting up the practical work done in Task 2.

TASK 2 — VERILOG HDL AND RTL DESIGN OF COMBINATIONAL CIRCUITS

Type: Hands-on Implementation & Verification
Simulator: Icarus Verilog 12.0 | Waveform Viewer: EPWave (EDA Playground)

Building directly on Task 1's concepts, this task implements and verifies three combinational circuits in synthesizable Verilog RTL.

Modules Implemented:

Logic Gates — AND, OR, NOT, NAND, NOR: Six gates, each built with a single continuous assign statement

Half Adder — Sum = A XOR B, Carry = A AND B: Adds two single-bit inputs

Full Adder — Sum = A XOR B XOR Cin, Cout = (A.B) + (B.Cin) + (A.Cin): Adds two bits plus carry-in, enabling multi-bit ripple-carry adders

Methodology:
- All modules use dataflow modeling with continuous assignments — the zero-delay combinational model
- Exhaustive testbenches exercise every possible input combination (4/4 for gates and half adder, 8/8 for full adder)
- Simulated in Icarus Verilog; waveforms captured and inspected in EPWave
- Every output cross-checked against manually derived truth tables

Verification Summary:
- All outputs match truth tables — Pass: 4/4 gates, 4/4 half adder, 8/8 full adder vectors
- No unknown (X) states — Pass: clean 0/1 outputs after each 10 ns settling window
- Correct timing behavior — Pass: zero-delay combinational model confirmed
- Synthesizable code — Pass: continuous assignments only, no blocking constructs

Key Takeaways:
- Continuous assignments accurately model real combinational hardware as a pure function of current inputs
- Exhaustive testbenches are essential for verification confidence
- Truth tables directly guide both design and verification
- Waveform inspection makes deviations from spec immediately visible

Next Steps:
These modules form the foundation for future work: multi-bit arithmetic units, control logic, and finite state machines.

TOOLS AND TECHNOLOGIES
- HDL: Verilog
- Simulator: Icarus Verilog 12.0
- Platform: EDA Playground
- Waveform Viewer: EPWave

STATUS
Both tasks complete — conceptual foundation (Task 1) and verified RTL implementation (Task 2) delivered, with all testbenches passing and design behavior matching specification exactly.
