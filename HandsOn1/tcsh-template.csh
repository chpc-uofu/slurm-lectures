#!/bin/tcsh
####TO DO: FILL IN SLURM PARAMETERS FOR FOLLOWING ITEMS####
#SBATCH --account=
#SBATCH --partition=
#SBATCH --time=
#SBATCH --ntasks
#SBATCH --mem
#SBATCH -o
#SBATCH -e

#creation of working directory (SCRDIR) and moving data to that location
set SCRDIR /scratch/general/nfs1/$USER/$SLURM_JOB_ID
mkdir -p $SCRDIR

cp data_visualization.r iris.csv $SCRDIR
cd $SCRDIR

#loading the R module and running the Rscript 'data_visualization.r' against the dataset 'iris.csv'
Rscript data_visualization.r iris.csv

#copying over the expected output 'IrisData.png' to a permanent storage location (home directory) and cleaning up the SCRDIR
cp IrisData.png $HOME/slurm-lectures/HandsOn1
cd $HOME
rm -rf $SCRDIR
