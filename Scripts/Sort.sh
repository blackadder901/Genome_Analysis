#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 02:00:00
#SBATCH -J sort
#SBATCH --mail-type=ALL
#SBATCH --mail-user g_nikiforos@hotmail.com

module load bioinfo-tools
module load samtools

for file in *.bam;do samtools sort $file -o sorted.$file;rm $file;done



