#!/bin/bash
#SBATCH --time=168:00:00
#SBATCH --nodes=1
#SBATCH --mem=24000
#SBATCH --output=MatlabExample2.log
#SBATCH --mail-user=jmerch@terpmail.umd.edu
#SBATCH --mail-type=ALL
#
# This is the most general purpose way to run ANY individual matlab script. This involves that you 
# run this wrapper, and the first option you give it is the matlab code you want to run. This will
# get fed into the matlab command below. The matlab script you give it will have to run as a 
# a stand-alone piece of code
# for example
# > sbatch /path/to/MatlabExample2_GeneralMatlab_wrapper.sh /path/to/MatlabScript.m
#
# to run our previous example using this wrapper:
# > sbatch sbatch /data/bswift-1/jmerch/P2P/MatlabExample2_GeneralMatlab_wrapper.sh /data/bswift-1/jmerch/P2P/MatlabExample1_MonteCarloSimulation.m
# 
# The dollar sign $ in bash indicates a variable, and the numbered variables are the order of inputs this wrapper was given
#
module load matlab
matlab -nodesktop -nodisplay -nosplash -r "clear; run '$1'; exit"