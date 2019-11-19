#!/bin/bash
#SBATCH -J RAxML
#SBATCH -n 1
#SBATCH -t 30:00
#SBATCH --mem=20g
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jkoh@uwyo.edu

#SBATCH --ntasks-per-node=8
#SBATCH --account=inbre-train

#each echo commands is just to make sure that all of your code is running properly 
echo "starting raxmlHPC run at $(date)."

module load swset gcc raxml

#this next bit iof code is all on one line

raxmlHPC-PTHREADS-AVX -T 8 -f a -m GTRGAMMA -p 618 -N 2 -x 309 -s KnowBears.aln -n BearTrees -w /project/inbre-train/inbre019/JustinMOLB4485/Koh_Phylo/BearTrees -o GiantPanda

echo "RAxML has finished at $(date)"
