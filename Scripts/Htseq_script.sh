#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J htseq_read
#SBATCH --mail-type=ALL
#SBATCH --mail-user g_nikiforos@hotmail.com

module load bioinfo-tools
module load htseq/0.9.1

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_18_rna_37.bam sorted.bin_18_rna_39.bam abin_18.gff > bin_18_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_19_rna_37.bam sorted.bin_19_rna_39.bam abin_19.gff > bin_19_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_27_rna_37.bam sorted.bin_27_rna_39.bam abin_27.gff > bin_27_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_32_rna_37.bam sorted.bin_32_rna_39.bam abin_32.gff > bin_32_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_33_rna_37.bam sorted.bin_33_rna_39.bam abin_33.gff > bin_33_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_37_rna_37.bam sorted.bin_37_rna_39.bam abin_37.gff > bin_37_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_1_rna_37.bam sorted.bin_1_rna_39.bam bbin_1.gff > bin_1_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_2_rna_37.bam sorted.bin_2_rna_39.bam bbin_2.gff > bin_2_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_3_rna_37.bam sorted.bin_3_rna_39.bam bbin_3.gff > bin_3_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_4_rna_37.bam sorted.bin_4_rna_39.bam bbin_4.gff > bin_4_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_5_rna_37.bam sorted.bin_5_rna_39.bam bbin_5.gff > bin_5_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_6_rna_37.bam sorted.bin_6_rna_39.bam bbin_6.gff > bin_6_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_7_rna_37.bam sorted.bin_7_rna_39.bam bbin_7.gff > bin_7_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_8_rna_37.bam sorted.bin_8_rna_39.bam bbin_8.gff > bin_8_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_9_rna_37.bam sorted.bin_9_rna_39.bam bbin_9.gff > bin_9_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_11_rna_37.bam sorted.bin_11_rna_39.bam bbin_11.gff > bin_11_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_12_rna_37.bam sorted.bin_12_rna_39.bam bbin_12.gff > bin_12_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_13_rna_37.bam sorted.bin_13_rna_39.bam bbin_13.gff > bin_13_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_14_rna_37.bam sorted.bin_14_rna_39.bam bbin_14.gff > bin_14_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_15_rna_37.bam sorted.bin_15_rna_39.bam bbin_15.gff > bin_15_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_16_rna_37.bam sorted.bin_16_rna_39.bam bbin_16.gff > bin_16_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_17_rna_37.bam sorted.bin_17_rna_39.bam bbin_17.gff > bin_17_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_20_rna_37.bam sorted.bin_20_rna_39.bam bbin_20.gff > bin_20_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_21_rna_37.bam sorted.bin_21_rna_39.bam bbin_21.gff > bin_21_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_22_rna_37.bam sorted.bin_22_rna_39.bam bbin_22.gff > bin_22_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_23_rna_37.bam sorted.bin_23_rna_39.bam bbin_23.gff > bin_23_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_24_rna_37.bam sorted.bin_24_rna_39.bam bbin_24.gff > bin_24_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_25_rna_37.bam sorted.bin_25_rna_39.bam bbin_25.gff > bin_25_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_26_rna_37.bam sorted.bin_26_rna_39.bam bbin_26.gff > bin_26_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_28_rna_37.bam sorted.bin_28_rna_39.bam bbin_28.gff > bin_28_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_29_rna_37.bam sorted.bin_29_rna_39.bam bbin_29.gff > bin_29_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_30_rna_37.bam sorted.bin_30_rna_39.bam bbin_30.gff > bin_30_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_31_rna_37.bam sorted.bin_31_rna_39.bam bbin_31.gff > bin_31_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_34_rna_37.bam sorted.bin_34_rna_39.bam bbin_34.gff > bin_34_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_35_rna_37.bam sorted.bin_35_rna_39.bam bbin_35.gff > bin_35_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_36_rna_37.bam sorted.bin_36_rna_39.bam bbin_36.gff > bin_36_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_38_rna_37.bam sorted.bin_38_rna_39.bam bbin_38.gff > bin_38_count.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no sorted.bin_39_rna_37.bam sorted.bin_39_rna_39.bam bbin_39.gff > bin_39_count.out
