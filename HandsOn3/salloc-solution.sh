salloc --account=<account-name> --partition=kingspeak-shared --time=00:10:00

#once job begins and you are ssh'd into the interactive node, do this:

module load R/4.4.0
Rscript data_visualization.r iris.csv
exit

#you will now see a message that your slurm session has ended and you will return to the login node.