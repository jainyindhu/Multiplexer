4-to-1 Multiplexer using Verilog HDL

📌 Project Description

A Multiplexer (MUX) is a combinational digital circuit that selects one input from multiple input signals and forwards the selected input to a single output.

This project implements a 4-to-1 Multiplexer using Verilog HDL.

The multiplexer has:

- 4 data inputs: I0, I1, I2, I3
- 2 select inputs: S1, S0
- 1 output: Y

The select lines determine which input is connected to the output.

---

🎯 Objective

To design and simulate a 4-to-1 Multiplexer using Verilog HDL and verify its functionality using a testbench and waveform simulation.

---

🔧 Inputs and Outputs

Signal| Description
I0| Data input 0
I1| Data input 1
I2| Data input 2
I3| Data input 3
S1| Select input 1
S0| Select input 0
Y| Multiplexer output

---

📊 Truth Table

S1| S0| Selected Input| Output Y
0| 0| I0| I0
0| 1| I1| I1
1| 0| I2| I2
1| 1| I3| I3

---

🧮 Boolean Expression

Y = S1'S0'I0 + S1'S0I1 + S1S0'I2 + S1S0I3

---

🏗️ Block Diagram

                 ┌───────────────┐
       I0 ──────►│               │
       I1 ──────►│               │
       I2 ──────►│    4-to-1     │──────► Y
       I3 ──────►│ Multiplexer    │
                 │               │
       S1 ──────►│               │
       S0 ──────►│               │
                 └───────────────┘

---

💻 Verilog Implementation

module multiplexer(
    input I0,
    input I1,
    input I2,
    input I3,
    input S1,
    input S0,
    output Y
);

assign Y = (~S1 & ~S0 & I0) |
           (~S1 &  S0 & I1) |
           ( S1 & ~S0 & I2) |
           ( S1 &  S0 & I3);

endmodule

---

🧪 Testbench

The testbench sets the input values as:

I0 = 0
I1 = 1
I2 = 0
I3 = 1

Then all four select-line combinations are applied:

00
01
10
11

The output is verified for each selection.

---

🖥️ Expected Console Output

S1 S0 | I0 I1 I2 I3 | Y
-------------------------
 0  0  |  0  1  0  1  | 0
 0  1  |  0  1  0  1  | 1
 1  0  |  0  1  0  1  | 0
 1  1  |  0  1  0  1  | 1

---

📈 Simulation

The testbench generates a waveform file:

waveform.vcd

The waveform contains:

- I0
- I1
- I2
- I3
- S1
- S0
- Y

The waveform can be viewed using GTKWave.

Take a screenshot of the waveform and save it as:

simulation/waveform.png

---

▶️ How to Run

Step 1: Compile

Using Icarus Verilog:

iverilog -o multiplexer_sim multiplexer.v multiplexer_tb.v

Step 2: Run Simulation

vvp multiplexer_sim

Step 3: View Waveform

gtkwave waveform.vcd

---

🛠️ Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Visual Studio Code
- GitHub

---

📚 Applications

Multiplexers are commonly used in:

- Data routing
- Communication systems
- Digital processors
- ALUs
- Computer networks
- Control systems
- Signal selection circuits

---

⭐ Key Learning Outcomes

This project demonstrates:

- Combinational logic design
- Multiplexer operation
- Select-line control
- Verilog HDL coding
- Testbench development
- Waveform simulation
- GitHub project organization

---

👩‍💻 Author

JAINY INDHU

Electronics and Communication Engineering