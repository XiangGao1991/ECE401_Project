# ECE401 Project — RV32I Processor with Cache Optimization

This repository contains our implementation of an RV32I processor designed for **ECE 401 – Advanced Computer Architecture**. The project includes both a baseline single-cycle processor and a cache-enhanced optimized version, along with test programs and cycle-accurate execution recordings.

---

## Repository Overview

The project consists of two main Logisim circuits:

### 1. Baseline Processor (`Baseline.circ`)
- Implemented in **Logisim-Evolution 4.0**  
- Provides a functional RV32I processor capable of correctly fetching, decoding, and executing 32-bit instructions  

To load and run the baseline:
1. Open `Baseline.circ` in Logisim-Evolution **4.0**
2. In the **Instruction Memory (ROM/Input)** module, load:
   - `Baseline_4.0_Instruction_Memory.mem`

This initializes the functional baseline processor.

---

### 2. Migrated Design & Cache Optimization (`Cache_Optimization.circ`)
- Designed for **Logisim-Evolution 2.7.1**
- Contains both the migrated baseline processor and the cache-optimized processor
- Both designs use the same instruction-memory and main-memory files for testing

---

## Running the Baseline (in the migrated design)

Using `Cache_Optimization.circ`:
1. Open the circuit in **Logisim-Evolution 2.7.1**
2. On the **BASELINE** top-level page:
   - Load instruction memory:
     - `Optimization_2.7_Instruction_Memory`
   - Open **Memory → RAM**, then load:
     - `Optimization_2.7_Main_Memory`

This executes the baseline test program (loading 100 values from memory).

---

## Running the Cache-Optimized Processor

Still inside `Cache_Optimization.circ`:
1. Navigate to the **OPTIMIZATION** top-level page
2. Load instruction memory:
   - `Optimization_2.7_Instruction_Memory`
3. For the memory hierarchy:
   - Open **Cache and Memory → Memory**
   - Load:
     - `Optimization_2.7_Main_Memory`

The optimized design demonstrates significantly improved CPI and execution speed due to cache hits.

---

## Execution Recordings

Cycle-by-cycle videos showing the behavior of the processor (main view, registers, memory, cache, etc.):

### Baseline Execution Videos
- [baseline-main.mp4](https://drive.google.com/file/d/16t-Tl34dw6Z-0CnWBvSHBYg8mv4-WVDB/view?usp=drive_link)
- [baseline-register.mp4](https://drive.google.com/file/d/10016B-SmTpHt0VKvXPOoICtzPnoY0Gyz/view?usp=drive_link)
- [baseline-memory.mp4](https://drive.google.com/file/d/16t-Tl34dw6Z-0CnWBvSHBYg8mv4-WVDB/view?usp=drive_link)

### Optimization Execution Videos
- [optimization-main.mp4](https://drive.google.com/file/d/1EE1_Lp4XMO6AR9N5NBIlNAwDxDkMiQGS/view?usp=drive_link)
- [optimization-register.mp4](https://drive.google.com/file/d/1xAgBdlLkE_VS52Coh8qk9Tv2M2W2HLM-/view?usp=drive_link)
- [optimization-cache.mp4](https://drive.google.com/file/d/1oRJrqW8v-cUBb_leiXpUpdMAFBFr6PLZ/view?usp=drive_link)

These recordings illustrate differences in load frequency, stalling behavior, and overall responsiveness between the baseline and cache-enhanced designs.
