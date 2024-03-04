# Procsim - Process Simulator

## Overview

Procsim is a process simulator developed for educational purposes. It allows users to simulate the behavior of processes running on a computer system with specified parameters such as RAM size, CPU speed, number of processors, and arrival interval.

## Features

- Simulate the behavior of processes with customizable parameters.
- Specify the number of processes, RAM size, CPU speed, number of processors, and arrival interval.
- View average execution time and standard deviation for simulated processes.
- Visualize simulation results with graphs.

## Installation

To install Procsim, follow these steps:

**Note** These installation steps are tailored for GNU/Linux users. If you're on a different operating system, well, you're on your own, buddy!

1. Install dependecies:
```
sudo pip3 install numpy simpy
```
*NOTE:* If you encounter any issues with package conflicts or dependencies, you can try adding the --break-system-packages flag. This flag allows Conda to override conflicting system packages during the installation process, which can help resolve compatibility problems.

2. Clone the Procsim repository and install it

```
git clone https://github.com/juampam/proccess_simulator
cd proccess_simulator
sudo cp procsim /usr/bin
```

## Usage

To use Procsim, run `procsim`  with the desired parameters.
### Arguments guide

## Arguments Guide

| Argument               | Description                                             |
|------------------------|---------------------------------------------------------|
| `--processes` or `-p` | Specify the number of processes to simulate.            |
| `--ram` or `-R`        | Set the size of RAM in MB.                              |
| `--interval` or `-i`   | Set the arrival interval of processes in time units.     |
| `--speed` or `-S`      | Set the CPU speed.                                      |
| `--processors` or `-P` | Specify the number of processors.                        |

 For example:

```bash
procsim -p 25 -R 100 -i 5 -S 1 -P 1
```

## Usage in this case
- Create CSV
```

echo Processes,Average > res-int-10.csv
echo 25,`procsim -p 25 | tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-int-10.csv

 echo 50,`procsim -p 50| tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-int-10.csv

echo 100,`procsim -p 100 | tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-int-10.csv

echo 150,`procsim -p 150 | tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-int-10.csv

echo 200,`procsim -p 200  | tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-int-10.csv

cat res-int-10.csv | column -ts, 
```
Output:

| Processes | Average            |
|---------|--------------------|
| 25      | 228.4166888359495  |
| 50      | 493.55335018258796 |
| 100     | 827.6006343112988  |
| 150     | 1260.0154614146863 |
| 200     | 1781.0912800160215 |


Make this whit all cases that you need to create dataframes, When creating dataframes, ensure to cover all relevant cases, considering different scenarios and configurations. This includes variations in input parameters such as the number of processes, RAM size, arrival intervals, CPU speed, and the number of processors. By incorporating diverse scenarios, you can ensure comprehensive testing and analysis of your simulation results.
For more examples, check the dfbuilder.sh in the repo.



