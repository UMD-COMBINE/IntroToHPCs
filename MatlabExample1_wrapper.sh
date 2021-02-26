#!/bin/bash
#SBATCH --time=168:00:00
#SBATCH --nodes=1
#SBATCH --mem=24000
#SBATCH --output=MatlabExample1.log
#SBATCH --mail-user=jmerch@terpmail.umd.edu
#SBATCH --mail-type=ALL
#
# This is the simplest way of running a single piece of matlab code. You would submit this script, 
# which will launch matlab and run the accompanying matlab code for an MC simulation.
# This approach is not great for running things in parallel, but gives you an idea of how job submission
# works. 
#
# to run this on a compute node:
# > sbatch /path/to/MatlabExample1_MonteCarloSimulation.m
#
# load the matlab module
module load matlab
matlab -nodesktop -nodisplay -nosplash -r "clear; run /data/bswift-1/jmerch/P2P/MatlabExample1_MonteCarloSimulation.m ; exit"
