# ECE401 Project — RV32I Processor with Cache Optimization

This repository contains our implementation of a RISC-V RV32I processor designed for ECE 401 – Advanced Computer Architecture. The project includes both a baseline single-cycle processor and a cache-enhanced optimized version, along with test programs and cycle-by-cycle execution recordings.

# Repository Overview

The project consists of two main Logisim circuits:

1. Baseline Processor (Baseline.circ)
Implemented in Logisim-Evolution 4.0.
Provides a functional RV32I processor capable of correctly fetching, decoding, and executing 32-bit instructions.
To load and run the baseline:
Open Baseline.circ in Logisim-Evolution 4.0.
In the Instruction Memory (ROM/Input) module, load:
##### Baseline_4.0_Instruction_Memory.mem
This initializes the functional baseline processor.

2. Migrated Design & Cache Optimization (Cache_Optimization.circ)
Designed for Logisim-Evolution 2.7.1.
Contains both the migrated baseline processor and the cache-optimized processor.
Both designs use the same instruction memory and main memory files for testing.

# Running the Baseline (in the migrated design)

Inside Cache_Optimization.circ:
Open the circuit in Logisim-Evolution 2.7.1.
On the BASELINE top-level page:
Load instruction memory from:
Optimization_2.7_Instruction_Memory
Load main memory by opening Memory → RAM and importing:
Optimization_2.7_Main_Memory
The processor will execute the test program (loading 100 values from memory).

# Running the Cache-Optimized Processor

Inside the same .circ file:
Navigate to the OPTIMIZATION top-level page.
Load instruction memory from:
Optimization_2.7_Instruction_Memory
For the memory hierarchy:
Open Cache and Memory → Memory, then load:
Optimization_2.7_Main_Memory
The optimized design will execute the same program, demonstrating substantially improved CPI and execution speed due to cache hits.

# Execution Recordings

We provide cycle-by-cycle videos showing how memory, registers, and cache contents evolve during execution.
Baseline Execution Videos
baseline-main.mp4
baseline-register.mp4
baseline-memory.mp4
Optimization Execution Videos
optimization-main.mp4
optimization-register.mp4

optimization-cache.mp4

These recordings allow visual comparison of load frequency, stalling behavior, and pipeline responsiveness between the two designs.
