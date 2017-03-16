#!/bin/bash
# This code rins Pilon variant calling
# module load pilon-1.21
#java -Xmx16G -jar pilon-1.21.jar -help # test if works or not
# pilon --genome genome.fasta [--frags frags.bam] [--jumps jumps.bam] [--unpaired unpaired.bam] # thtat is a blueprint for running a command

java -Xmx16G -jar pilon-1.21.jar --genome  H37Rv_reference.fasta --frags file.sorted.bam  --output pilon_output.pilon  --vcf 

 #--vcfqe --outdir directory ./ # you can add other parameters


