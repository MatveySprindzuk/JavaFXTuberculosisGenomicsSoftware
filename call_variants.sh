#!/bin/bash
# data processing step is based on the tutorial http://www.htslib.org/workflow/

samtools mpileup -f H37Rv_reference.fasta file.sorted.bam | java -jar VarScan.jar pileup2snp > VarscanResults.snp # Calling SNPs on the sorted BAM file, try to change extension to .vcf



