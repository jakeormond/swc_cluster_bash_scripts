#!/bin/bash
#SBATCH --job-name=cebra_grid_search_rat_3
#SBATCH --output=cebra_grid_search_rat_3_%j.out
#SBATCH --error=cebra_grid_search_rat_3_%j.err
#SBATCH -p gpu
##SBATCH -N 4
#SBATCH --time=0-40:00
#SBATCH --gres=gpu:5 # this is important to use GPUs
#SBATCH --gres-flags=enforce-binding

module purge 

module load miniconda/23.10.0

module load cuda/11.8

nvidia-smi

conda activate cebra_env2
python /nfs/nhome/live/jakeo/python_code/neural_manifolds/cebra_embedding_goaldir_window_size_rat3.py


