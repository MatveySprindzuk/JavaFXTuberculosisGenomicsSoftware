#!/bin/sh

# These code lines are designed to postprocess VCF files from variant calling software in order to make them adequate for the input of genome annotation software
# You need to have a Linux OS and additional installed VT tools to make these codes runnable as an action of a Python or the other language function
# Depending on the input reference and other data you have, you should change the identifiers/names accordingly
# UIIP, Minsk, Belarus, msprindzhuk@mail.ru

sed 's/AL123456.3/AL123456/' reducedPilonOutputFileFinal.vcf > reducedPilonOutputFileFinalBetter.vcf # remove special characters from chromosome name (https://www.gnu.org/software/sed/manual/sed.html, https://www.ncbi.nlm.nih.gov/nuccore/AL123456.3)

# gzip reducedPilonOutputFileFinalBetter.vcf # archive/compress a file, not obligatory (for VCF and BCF tools and other manipulations)

# zcat reducedPilonOutputFileFinalBetter.vcf.gz | vcf-to-tab > out_ready.tab # generates a trimmed tab-delimited file, it cuts columns for undefined reasons

# zcat reducedPilonOutputFileFinalBetter.vcf.gz | vcf-to-tab > out_ready.vcf # make a tab delimited as a VCF for proper input (http://vcftools.sourceforge.net/perl_module.html)

./vt decompose -s -o DecomposedPilonReducedresult.vcf  reducedPilonOutputFileFinalBetter.vcf  # arguments in vice versa position, first is output (http://genome.sph.umich.edu/wiki/Vt)

./vt normalize -r H37Rv_reference.fasta -o VTPilonVCF.vcf  DecomposedPilonReducedresult.vcf # this produces final ready for SNPEff  digestable VCF # error is here

#./vt decompose -s -o output.vcf reducedPilonOutputFileFinal.vcf # arguments in vice versa position, first #is output (http://genome.sph.umich.edu/wiki/Vt)
#./vt normalize -r H37Rv_reference.fasta -o FinalReadyNormalizedDecomposedPilonReducedresult.vcf output.vcf



