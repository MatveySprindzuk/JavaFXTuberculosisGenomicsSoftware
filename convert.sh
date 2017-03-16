#!/bin/bash
# data processing step is based on the tutorial http://www.htslib.org/workflow/


samtools view  -bS aligned_sam_result.sam > unsorted_bam.bam # coverting to bam


# samtools view -bS aligned_sam_result.sam  | samtools sort - ls_sorted_bam.bam # converting and sorting in one line

# samtools view -S  aligned_sam_result.sam > unsorted_bam.bam # coverting to bam, -b parameter is omitted
# samtools index unsorted_bam.bam # indexing unsorted file

# samtools sort -0 bam unsorted_bam.bam > ls_sorted_bam.bam # sorting 

samtools sort unsorted_bam.bam file.sorted


samtools index file.sorted.bam # indexing
 










