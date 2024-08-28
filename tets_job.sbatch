#!/bin/bash
#
#SBATCH --job-name=test_arr
#SBATCH --output=test_arr.out
#SBATCH --error=test_arr.err
#SBATCH -p gpu 
#SBATCH -N 1
#SBATCH --mem=2G
#SBATCH --time=0-6:00
##SBATCH --gres=gpu:1  # this is important to use GPUs
#
#SBATCH --array=1-8
source ~/.bashrc
conda activate myenv
ppython my_script.py --use-gpu --seed $SLURM_ARRAY_TASK_ID