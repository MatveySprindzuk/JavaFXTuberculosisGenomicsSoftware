#!/bin/bash
a=1
for i in *.fastq; do
  new=$(printf "%04d.fastq" "$a") #04 pad to length of 4
  mv -- "$i" "$new"
  let a=a+1
done

bwa index H37Rv_reference.fasta # indexing reference genome file

bwa mem H37Rv_reference.fasta 0001.fastq 0002.fastq > aligned_sam_result.sam # doing alignment with BWA engine
