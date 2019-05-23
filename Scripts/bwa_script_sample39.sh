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

dir=/home/georg/genome_analysis/analyses/fastqc_trimmomatic_results/trimmomatic_results/RNA/RNA_trim_resutls

for x in {1..39}
do

        bwa mem -t 2 /home/georg/genome_analysis/analyses/mapping_bwa_results/bins_and_index/bin_and_index_$x/bin_$x.fa\
                $dir/SRR4342139.1FP.fastq.gz\
                $dir/SRR4342139.2FP.fastq.gz > bin_$x.sam

        bwa mem -t 2 /home/georg/genome_analysis/analyses/mapping_bwa_results/bins_and_index/bin_and_index_$x/bin_$x.fa\
                <(zcat $dir/SRR4342139.1FU.fastq.gz\
                $dir/SRR4342139.2UP.fastq.gz) >> bin_$x.sam

        samtools view -b bin_$x.sam > bin_$x.bam
        samtools sort bin_$x.bam -o sorted.bin_$x.bam
        rm bin_$x.sam
        rm bin_$x.bam
done

