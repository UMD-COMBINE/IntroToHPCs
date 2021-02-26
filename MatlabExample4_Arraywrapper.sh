#!/bin/bash
#SBATCH --time=168:00:00
#SBATCH --nodes=1
#SBATCH --mem=24000
#SBATCH --array=5,10,50,100
#SBATCH --mail-user=jmerch@terpmail.umd.edu
#SBATCH --mail-type=ALL
#
# This wrapper has an array option in slurm, which means that it will run this job for each of the numbers defined
# in the array above! 
#
# This is a great way to parallelize something!!
#
# We can use the same function from before, but don't give it an iteration amount
# > sbatch /data/bswift-1/jmerch/P2P/MatlabExample4_Arraywrapper.sh /data/bswift-1/jmerch/P2P/MatlabExample3_FunctionUsingInputs.m
# 
# The dollar sign $ in bash indicates a variable, and the numbered variables are the order of inputs this wrapper was given
#
# load the matlab module
module load matlab
# get the full path and name of function using bash commands dirname and basename. 
# These will be used to add folder to path in matlab, and give function call
Path=$(dirname $1)
Func=$(basename $1 .m)
#
# And this time, the iteration amounts will be defined by the array numbers defined in the slurm options
Num=${SLURM_ARRAY_TASK_ID}

matlab -nodesktop -nodisplay -nosplash -r "clear; addpath('$Path'); $Func $Num; exit"