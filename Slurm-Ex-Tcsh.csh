#!/bin/tcsh
#SBATCH --account=owner-guest
#SBATCH --partition=kingspeak-guest
#SBATCH --qos=kingspeak-guest
#SBATCH --time=02:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --mem=32G
#SBATCH -o slurmjob-%j.out-%N
#SBATCH -e slurmjob-%j.err-%N
#set up the scratch directory
set SCRDIR /scratch/local/$USER/$SLURM_JOB_ID
mkdir -p $SCRDIR

#move input files into scratch directory
cp file.input $SCRDIR/
cd $SCRDIR

#Set up whatever package we need to run with
module load <some-module>

#Run the program with our input
myprogram < file.input > file.output
#Move files out of working directory and clean up
cp file.output $HOME/.
cd $HOME
rm -rf $SCRDIR

