#!/bin/bash
# Code runs Snap fast aligner
a=1
for i in *.fastq; do # this code for renaming input fastqs
  new=$(printf "%04d.fastq" "$a") #04 pad to length of 4
  mv -- "$i" "$new"
  let a=a+1
done
snap-aligner index H37Rv_reference.fa ./
snap-aligner paired ./  ./0001.fastq ./0002.fastq  -o ./snap_results/snap_aligner_output.sam
