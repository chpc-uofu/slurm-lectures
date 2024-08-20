#!/bin/bash
####TO DO: FILL IN SLURM PARAMETERS FOR FOLLOWING ITEMS####
#SBATCH --account=<account-name>
#SBATCH --partition=kingspeak-shared
#SBATCH --time=00:05:00
#SBATCH --ntasks=1
#SBATCH --mem=25G
#SBATCH -o slurm-%j.out%N
#SBATCH -e slurm-%j.err%N

#creation of scratch directory
SCRDIR=/scratch/general/nfs1/$USER/$SLURM_JOB_ID
mkdir -p $SCRDIR

####TO DO: COPY INPUT FILES TO $SCRDIR####
cp iris.csv $SCRDIR
cp data_visualization.r $SCRDIR

####TO DO: CHANGE DIRECTORIES TO $SCRDIR####
cd $SCRDIR

####TO DO: LOAD THE LATEST R MODULE####
module load R/4.4.0

####TO DO: RUN THE R SCRIPT WITH DATA SHEET *hint, it beings with 'Rscript'####
Rscript  data_visualization.r iris.csv

####TO DO: COPY OVER OUTPUT FILE 'IrisData.png' TO $HOME AND REMOVE $SCRDIR####
cp IrisData.png $HOME
rm -rf $SCRDIR