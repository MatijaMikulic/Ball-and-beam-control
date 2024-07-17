
# Ball and Beam Control

This repository contains a MATLAB-based implementation of the ball and beam control system.

## Overview

The Ball and Beam Control project demonstrates the design and implementation of a control system to balance a ball on a beam. This classic control theory problem involves stabilizing the ball at a desired position on the beam by adjusting the angle of the beam.

## Features

- Simulink model of the ball and beam system (`ballAndBeamModel.slx`)
- MATLAB app for interactive simulation (`ballAndBeamapp.mlapp`)
- Control algorithm implementation (`updateApp.m`, `kmk.m`)
- Sample data file (`matlab.mat`)

## Getting Started

### Prerequisites

- MATLAB and Simulink

### Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/MatijaMikulic/Ball-and-beam-control.git
   ```
2. Navigate to the project directory:
   ```sh
   cd Ball-and-beam-control
   ```

### Usage

1. Open MATLAB.
2. Open the Simulink model by running:
   ```matlab
   open('ballAndBeamModel.slx')
   ```
3. Run the simulation to observe the control behavior.
4. Open the MATLAB app for interactive simulation by running:
   ```matlab
   ballAndBeamapp
   ```

### Directory Structure

- `ballAndBeamModel.slx`: Simulink model of the ball and beam system.
- `ballAndBeamapp.mlapp`: MATLAB app for interactive simulation.
- `updateApp.m`: MATLAB script for updating the app.
- `kmk.m`: MATLAB script for control algorithm.
- `matlab.mat`: Sample data file.

## Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -m 'Add new feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Open a Pull Request.

## License

This project is licensed under the MIT License.

## Acknowledgements

- Open-source community for their support and contributions.

