#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 5:00:00
#SBATCH -J Map_script
#SBATCH --mail-type=ALL
#SBATCH --g_nikiforos@hotmail.com

module load bioinfo-tools
module load bwa/0.7.8

bwa index /home/georg/genome_analysis/analyses/mapping_bwa_results/bins_and_index/bin_and_index_x/bin_x.fa

bwa mem -t 2 /home/georg/genome_analysis/analyses/mapping_bwa_results/bins_and_index/bin_and_index_x/bin_x.fa\
 /home/georg/genome_analysis/analyses/quality_control_trimmo_results/RNA/RNA_trim_resutls/SRR4342137.1FP.fastq.gz\
 /home/georg/genome_analysis/analyses/quality_control_trimmo_results/RNA/RNA_trim_resutls/SRR4342137.2FP.fastq.gz > bin_x.sam

bwa mem -t 2 /home/georg/genome_analysis/analyses/mapping_bwa_results/bins_and_index/bin_and_index_x/bin_x.fa\
 <(zcat /home/georg/genome_analysis/analyses/quality_control_trimmo_results/RNA/RNA_trim_resutls/SRR4342137.1FU.fastq.gz\
 /home/georg/genome_analysis/analyses/quality_control_trimmo_results/RNA/RNA_trim_resutls/SRR4342137.2UP.fastq.gz) >> bin_x.sam



'''Apply this command for all files in the folder /home/georg/genome_analysis/analyses/mapping_bwa_results/bins_and_index'''
