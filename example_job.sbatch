#!/bin/bash
#SBATCH --job-name=cebra_test_m_widows_duras
#SBATCH --output=cebra_output_26-03-2024.txt
#SBATCH --error=cebra_error_26-03-2024.err
#SBATCH -p gpu 
#SBATCH -N 1
#SBATCH --mem=100G
#SBATCH --time=0-36:00
#SBATCH --gres=gpu:1  # this is important to use GPUs


module load miniconda/23.10.0

conda activate cebra_env
#python /nfs/nhome/live/jakeo/python_code/neural_manifolds/cebra_embedding_time.py 
python /nfs/nhome/live/jakeo/python_code/neural_manifolds/cebra_embedding_time_grid_search.py


