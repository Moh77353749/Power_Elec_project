# Buck-Boost Converter for Power Electronics Project

## 📘 Project Overview

This project focuses on the design, modeling, and implementation of a Buck-Boost Converter as part of the Power Electronics course (REE 411) for Renewable Energy Engineering. 
The Buck-Boost Converter is capable of both stepping up and stepping down voltage, enabling operation between 12V and 24V input/output voltage levels. 
The system was built using power electronics components such as inductors, capacitors, MOSFETs, and diodes, and was validated using both hardware and simulation models.



## 🚀 Key Features

* Voltage Regulation: Operates in both Buck (step-down) and Boost (step-up) modes to maintain desired output voltage.

* Power Efficiency: Designed for efficient power transfer with minimal losses.

* Control System: Uses a PI Controller for stable voltage regulation.

* Hardware Implementation: Built and tested the physical converter circuit using real components.


## 🛠️ Tools & Technologies

* MATLAB/Simulink: Used for system modeling and transfer function analysis.

* LTspice: Used to simulate the control circuit design.

* Hardware Components: MOSFETs, diodes, capacitors, inductors, and op-amps.

## 🧪 Technical Approach

### ⚙️ Problem Definition

* Design a Buck-Boost Converter to meet the following specifications:

* Voltage range: 12V to 24V

* ΔiL < 40% of IL (current ripple constraint)

* Δv0 = 250mV (voltage ripple constraint)

Continuous Conduction Mode (CCM) operation

### 📐 System Design

* Buck Mode: Input voltage is 24V, output voltage is 12V.

* Boost Mode: Input voltage is 12V, output voltage is 24V.


## 📈 Control Design

AC Analysis: Used perturbation method to linearize the system for transfer function derivation.

PI Controller Design:

Design goal: Overshoot ≤ 4%, Settling time = 20 ms

Used sisotool in MATLAB to tune the controller.

Transfer Function:

G(s) = (-2.634e-05 * s + 3.16) / (1.264e-08 * s^2 + 9.877e-06 * s + 0.7901)

Optimal Controller Gains: P = 0, I = 4.9
