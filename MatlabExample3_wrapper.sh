#!/bin/bash
#SBATCH --time=168:00:00
#SBATCH --nodes=1
#SBATCH --mem=24000
#SBATCH --output=MatlabExample3.log
#SBATCH --mail-user=jmerch@terpmail.umd.edu
#SBATCH --mail-type=ALL
#
# This wrapper is for matlab functions that require 1 input. For example, the MC simulation, but we tell it how many 
# iterations of the simulation to run
#
# For example, if we wanted to run this using 100 iterations of the simulation:
# > sbatch /data/bswift-1/jmerch/P2P/MatlabExample3_wrapper.sh /data/bswift-1/jmerch/P2P/MatlabExample3_FunctionUsingInputs.m 100
# 
# The dollar sign $ in bash indicates a variable, and the numbered variables are the order of inputs this wrapper was given
#
# load the matlab module
module load matlab
# get the full path and name of function using bash commands dirname and basename. 
# These will be used to add folder to path in matlab, and give function call
Path=$(dirname $1)
Func=$(basename $1 .m)
matlab -nodesktop -nodisplay -nosplash -r "clear; addpath('$Path'); $Func $2; exit"