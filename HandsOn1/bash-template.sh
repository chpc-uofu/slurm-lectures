#!/bin/bash
####TO DO: FILL IN SLURM PARAMETERS FOR FOLLOWING ITEMS####
#SBATCH --account=
#SBATCH --partition=
#SBATCH --time=
#SBATCH --ntasks=
#SBATCH --mem=
#SBATCH -o
#SBATCH -e

#creation of working directory (SCRDIR) and staging files for analysis
SCRDIR=/scratch/general/nfs1/$USER/$SLURM_JOB_ID
mkdir -p $SCRDIR

cp data_visualization.r iris.csv $SCRDIR
cd $SCRDIR

#loading the latest R module
module load R

#Running the Rscript 'data_visualition.r' to create a graph using the data 'iris.csv'
Rscript data_visualization.r iris.csv

#copying expected output 'IrisData.png' back to $HOME (permanent storage) and cleaning up $SCRDIR
cp IrisData.png $HOME/slurm-lecture/HandsOn1
cd $HOME
rm -rf $SCRDIR
