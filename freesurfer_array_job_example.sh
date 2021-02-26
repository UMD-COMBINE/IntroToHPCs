#!/bin/bash
#SBATCH --time=168:00:00
#SBATCH --nodes=1
#SBATCH --array=23,25,28,29,30,36,37,40,42,44,46,47,51,53,54,57,61,62,66,67,68%15
#SBATCH --ntasks-per-node=6
#SBATCH --mem=24000
#SBATCH --output=CMNT_diana.log
#SBATCH --mail-user=jmerch@terpmail.umd.edu
#SBATCH --mail-type=ALL
#
# load the singularity module
module load singularity/2.6.0
#
#
Sub=sub-REDCMNT1${SLURM_ARRAY_TASK_ID}
# You can change the 4 lines below, I just like having it time stamp it
module load freesurfer
#
echo "------------------------------------------------------------------"
echo "started freesurfer"
echo ${Sub}
date
echo "------------------------------------------------------------------"
#
recon-all -i /data/bswift-1/hickeyac/CMNT/in/${Sub}/anat/${Sub}_T1w.nii.gz -openmp 6 -s ${Sub} -sd /data/bswift-1/hickeyac/CMNT/out/freesurfer -all -parallel
#
#
echo "------------------------------------------------------------------"
echo "Ended freesurfer"
echo ${Sub}
date
echo "------------------------------------------------------------------"
#
#
# load the singularity module
module load singularity/2.6.0
#
# You can change the 4 lines below, I just like having it time stamp it
echo "------------------------------------------------------------------"
echo "Starting fMRIprep at:"
echo working on ${Sub}
date
echo "------------------------------------------------------------------"
#
# 
#
export SINGULARITYENV_TEMPLATEFLOW_HOME=/home/${USER}/templateflow
#
singularity run --cleanenv \
--home /data/bswift-1/${USER}:/home/${USER} \
--bind /data/bswift-1/${USER}/templateflow:/home/${USER}/templateflow \
/data/bswift-1/hickeyac/fmriprep-1.4.1.simg \
/home/hickeyac/CMNT/in /home/hickeyac/CMNT/out participant \
--participant-label ${Sub} \
-w /home/hickeyac/CMNT/out/working \
--skull-strip-template MNI152NLin2009cAsym --output-spaces MNIPediatricAsym:cohort-4:res-2 MNI152NLin2009cAsym:res-2 \
--use-aroma \
--nthreads 6 --n_cpus 6 --omp-nthreads 6 \
--mem-mb 24000 \
--skip_bids_validation \
--no-submm-recon \
--use-syn-sdc \
--fs-license-file /home/hickeyac/license.txt
#
echo "------------------------------------------------------------------"
echo "Ended fMRIprep"
echo ${Sub}
date
echo "------------------------------------------------------------------"

