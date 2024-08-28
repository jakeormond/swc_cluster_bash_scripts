# run_grid_search.sh

#!/bin/bash

# Generate the current date and time
current_date=$(date +%d-%m-%Y_%H-%M-%S)

# Define the job name and error file name
job_name="cebra_grid_search_rat_7_run_${current_date}.txt"
error_file="cebra_error_${current_date}.err"

# Pass the job name and error file name to the sbatch command
sbatch --job-name=cebra_grid_search_rat_7 --output=$job_name --error=$error_file grid_search_job.sbatch