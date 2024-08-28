#!/bin/bash
#SBATCH --job-name=cebra_grid_search_rat_10
#SBATCH --output=cebra_grid_search_rat_10_%j.out
#SBATCH --error=cebra_grid_search_rat_10_%j.err
#SBATCH -p gpu
##SBATCH -N 4
#SBATCH --time=0-60:00
#SBATCH --gres=gpu:5 # this is important to use GPUs
#SBATCH --gres-flags=enforce-binding
#SBATCH --mem=100G # Request 100 gigabytes of memory

module purge 

module load miniconda/23.10.0

module load cuda/11.8

nvidia-smi

conda activate cebra_env2
python /nfs/nhome/live/jakeo/python_code/neural_manifolds/cebra_embedding_goaldir_window_size_rat10.py


