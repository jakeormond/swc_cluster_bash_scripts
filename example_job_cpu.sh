#!/bin/bash
#SBATCH --job-name=test_arr
#SBATCH --output=test_arr.out
#SBATCH --error=test_arr.err
#
#SBATCH -p cpu
#SBATCH -N 1
#SBATCH -c 8
#SBATCH --mem=8G 
#SBATCH --time=0-6:00
#

module load miniconda/23.10.0
conda activate cebra_env

python /nfs/nhome/live/jakeo/python_code/cebra_code/cebra_test.py
