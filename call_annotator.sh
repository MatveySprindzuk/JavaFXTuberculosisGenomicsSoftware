#!/bin/bash
#cd home/mat29/Desktop/CurrentPythonSoftwareversion/

./VCF_annotator.pl --gff3 sequence.gff3 --genome  H37Rv_reference.fasta  --vcf DecomposedPilonReducedresult.vcf  > AnnotatorResultsPilonVCF

echo Done
