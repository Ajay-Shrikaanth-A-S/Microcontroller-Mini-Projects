## Overview

This project is part of the Microprocessor, Microcontroller, and Interfacing Techniques (MPMC) course. It demonstrates fundamental concepts in hardware control using assembly language for embedded systems.

## Technologies Used
Keil µVision IDE: For simulating and testing 8051 microcontroller programs.

emu8086: For writing and simulating 8086 microprocessor programs.

## Programs
### 1. LED Blinking (8051)
Description:
This program continuously blinks an LED connected to the 8051 microcontroller. The LED is toggled ON and OFF with a delay loop implemented in assembly.

Working:

SETB and CLR instructions toggle the LED state.

A delay subroutine is used to control the blink interval.

The program loops infinitely to ensure continuous blinking.

![Led blinking pic 8051](https://github.com/user-attachments/assets/8bf07e71-dab8-4b44-abe5-c75bc7387321)

### 2. 7-Segment Display (8051)
Description:
This program displays digits from 0 to 9 sequentially on a 7-segment display connected to the 8051 microcontroller.

Working:

A lookup table contains segment patterns for each digit.

The program iterates through the lookup table, sending segment codes to the display.

A delay is added between digit transitions for better visibility.

![7 Segment Display 8051](https://github.com/user-attachments/assets/7b80b502-82d4-4f84-8217-d62c19c82c72)


### 3. Stepper Motor Control (8086)
Description:
This program controls the rotation of a stepper motor in both clockwise (CW) and counter-clockwise (CCW) directions.

Working:

Binary step sequences for CW and CCW rotations are stored in lookup tables.

The motor rotates by outputting these sequences to a virtual port.

The program switches between CW and CCW after a set number of steps.

![stepper motor 8086](https://github.com/user-attachments/assets/5df5795c-3215-425b-9c1e-8623bca9a296)



### 4. Thermometer Simulation (8086)
Description:
This program simulates a thermostat system that maintains a temperature range between 60°C and 80°C.

Working:

Reads the temperature from a virtual thermometer.

Turns the heater ON if the temperature is below 60°C.

Turns the heater OFF if the temperature exceeds 80°C.

Continuously monitors and adjusts the temperature.

![Thermometer 8086](https://github.com/user-attachments/assets/cdebbe12-2939-44cf-981c-df0c0cc4131b)

