salloc --account=owner-guest --partition=notchpeak-guest --qos=notchpeak-guest --time=00:05:00 --ntasks=1 --mem=15G

#once job begins and you are ssh'd into the interactive node, do this:

module load R/4.4.0
Rscript data_visualization.r iris.csv
exit

#you will now see a message that your slurm session has ended and you will return to the login node.
