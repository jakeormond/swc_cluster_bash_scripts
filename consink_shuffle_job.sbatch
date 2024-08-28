#!/bin/bash
#SBATCH --job-name=consink_shuffle_rat_47_08-02-2024
#SBATCH --output=consink_shuffle_rat_47_08-02-2024_%j.out
#SBATCH --error=consink_shuffle_rat_47_08-02-2024_%j.err
#SBATCH -p cpu
#SBATCH -N 1  # request 1 node
#SBATCH --ntasks-per-node=1  # request 1 task per node
#SBATCH --cpus-per-task=16  # request 1 core per task
#SBATCH --mem=100G 
#SBATCH --time=0-12:00

module purge 

module load miniconda/23.10.0

conda activate neural_env

export PYTHONPATH="/nfs/nhome/live/jakeo/python_code/robot_maze_analysis_code:${PYTHONPATH}"

cd /nfs/nhome/live/jakeo/python_code/robot_maze_analysis_code
python spikes/calculate_consink_shuffles_hpc.py

