# 💡 LISPI Processor with Seven-Segment Display

[![Made with ❤️](https://img.shields.io/badge/Made%20with-%E2%9D%A4-red)](#)
[![License: IIT](https://img.shields.io/badge/License-IIT-yellow.svg)](LICENSE)
[![Build: Stable](https://img.shields.io/badge/build-stable-brightgreen)](#)
[![Target: Basys 3](https://img.shields.io/badge/Target-Basys%203-blue)](#)
[![Verilog](https://img.shields.io/badge/Language-Verilog-purple)](#)

---

## 🧠 Overview

**LISPI** (Little Instruction Set Processor Implementation) is a minimalist, 16-bit custom RISC-style processor built in **Verilog HDL**. This version extends the architecture with **real-time display output** via a **seven-segment display** on the **Basys 3 FPGA** board.

It is designed as an educational tool to teach core processor concepts including datapath design, FSM-based control units, memory mapping, and hardware-software interfacing.

---

## 🚀 Key Features

- 🧮 16-bit custom instruction set
- 🔢 Minimalist RISC architecture with accumulator-based design
- 🎛️ Real-time **seven-segment display** driver
- 💡 LED output for visual debugging
- 🔄 Memory-mapped I/O and program flow control
- 🎛️ Input through switches and buttons
- 🧱 Modular design for easier understanding and debugging

---

## 📐 Processor Architecture

The processor uses a **load-execute-store** pattern with accumulator-style instructions. Here's a summary:

- **ALU**: Performs arithmetic/logical operations (ADD, SUB, AND, OR, etc.)
- **Accumulator**: Holds the result of operations
- **PC**: Points to current instruction in memory
- **Control Unit**: FSM that manages execution cycle
- **Memory**: Separate instruction and data space
- **I/O**: Outputs to 7-seg and LEDs, inputs via switches

Each instruction typically fits into a 16-bit format:  
`[OPCODE | REGISTER | OPERAND]`

---

## 📂 Directory Structure

```bash
LIPSI_WITH_SEVEN_SEG/
├── project_1/               # Vivado auto-generated files
├── Accum.v                 # Accumulator register module
├── ALU.v                   # ALU with operations (add, sub, and, etc.)
├── ctrl2.v                 # Control Unit (finite state machine)
├── incr.v                  # PC incrementer logic
├── memory.v                # ROM/RAM unified memory interface
├── mux3to1.v               # Selects data input sources
├── pc.v                    # Program counter module
├── seven_seg.v             # Drives Basys 3 seven-segment display
├── top.v                   # Top module connecting all components
├── toptb.v                 # Testbench for simulation
├── Basys3_Master.xdc       # Xilinx constraint file (pin mappings)
└── README.md               # This file
