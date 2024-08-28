#!/bin/bash
#SBATCH --job-name=umap_lin_supervised_28022024_1
#SBATCH --output=umap_sup_linear_28022024_1.txt
#SBATCH --error=umap_linear_sup_28022024_1.err
#
#SBATCH -p cpu
#SBATCH -N 1
#SBATCH -c 15
#SBATCH --mem=60G
 
#SBATCH --time=0-4:00
#


module
load
miniconda/4.9.2
 
conda
activate
neuralmanifoldenv
python
/nfs/nhome/live/carlag/granger_lfp/manifoldtest/run_umap_exploratory2svr_linear.py


