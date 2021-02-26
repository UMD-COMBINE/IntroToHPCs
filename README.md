# Introduction To high performance computing at University of Maryland, College Park

This repository contains all the materials for a peer to peer tutorial on high performance computing (HPC) at University of Maryland developed by graduate fellows in the NSF-funded COMBINE fellowship.

![alt text](https://github.com/UMD-COMBINE/IntroToHPCs/blob/main/AdvertisementImage.png)

## You can find all the slide decks, tutorial information, and example code to help you get started using the HPC clusters at UMD. The workshop schedule and accompanying files are as follows: 

**Presentation 1** (~10 min): *Introduction to Super Computers by Daniel Callow* - SD1_IntroToHPCs.pdf

**Breakout session 1** (~5 min): *Small group discussions about what sort of projects would benefit from super computing*

**Presentation 2** (~10 min): *Basics of parallelization by Dushyanthi Karunathilake* - SD2_BasicsOfParallelization.pdf

**Presentation 3** (~10 min): *High performance computing resources at UMD by Phillip Alvarez* - SD3_HPCsAtUMD.pdf

**Breakout session 2** (~5 min): *Get set up on the UMD HPC that you have access to via your school/department*

**Presentation 4** (~10 min): *Getting started: Accessing & using your HPC by Junaid S Merchant* - SD4_Presentations4-5.pdf

**Presentation 5** (~15 min): *Writing & submitting code with examples in MATLAB & R by Junaid S Merchant* - SD4_Presentations4-5.pdf

**Open Q and A session till 14:30**

### Example code files: 

MatlabExample1_MonteCarloSimulation.m - *Matlab Monte Carlo simulation example discussed in SD4_Presentations4-5.pdf*

MatlabExample1_wrapper.sh - *Bash wrapper for Matlab Monte Carlo simulation example discussed in SD4_Presentations4-5.pdf*

MatlabExample2_GeneralMatlab_wrapper.sh - *A more general purpose wrapper that will run any standalone matlab script*

MatlabExample3_FunctionUsingInputs.m - *A Matlab function that requires input variables*

MatlabExample3_wrapper.sh - *Bash wrapper for matlab function that requires input*

MatlabExample4_Arraywrapper.sh - *Example of an Array job which is an optimal way of parallelizing data processing (for things like parameter tuning)*

PythonExample.py - *Example Python script with SLURM options that run as is without a wrapper*

RExample1.R - *Example R script with SLURM options that run as is without a wrapper*
