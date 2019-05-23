#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J Map_script
#SBATCH --mail-type=ALL
#SBATCH --g_nikiforos@hotmail.com

module load bioinfo-tools
module load samtools

for file in /home/georg/genome_analysis/analyses/mapping_bwa_results/sam_files/*.sam

do

        name=${file##*/}
        base=${name%.sam}

        samtools view -b $file >$base.bam
        rm $file

done
