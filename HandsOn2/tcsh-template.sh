#!/bin/tcsh
####TO DO: FILL IN SLURM PARAMETERS FOR FOLLOWING ITEMS####
#SBATCH #account
#SBATCH #partition
#SBATCH #time
#SBATCH #number of cpus
#SBATCH #amount of memory
#SBATCH #standard output file
#SBATCH #standard err file

#creation of scratch directory
set SCRDIR /scratch/general/nfs1/$USER/$SLURM_JOB_ID
mkdir -p $SCRDIR

####TO DO: COPY INPUT FILES TO $SCRDIR####

####TO DO: CHANGE DIRECTORIES TO $SCRDIR####

####TO DO: LOAD THE LATEST R MODULE####

####TO DO: RUN THE R SCRIPT WITH DATA SHEET *hint, it beings with 'Rscript'####

####TO DO: COPY OVER OUTPUT FILE 'IrisData.png' TO $HOME AND REMOVE $SCRDIR####