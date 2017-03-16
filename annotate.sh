#!/bin/bash
# This code is for running SNPEff annotation engine

# java -jar snpEff.jar download GRCh37.64
#java -Xmx4g -jar snpEff.jar pilon_output.pilon.vcf > pilon_output_SNPEffSoftware.ann.vcf
#java -Xmx4G -jar snpEff.jar eff -v -onlyCoding true -i vcf -o vcf # pilon_output.pilon.vcf > snpEff_output.vcfExample SnpEff Usage with a VCF Input File

#Below is an example of how to run SnpEff version 2.0.5 with a VCF input file and have it write its output in VCF format as well. Notice that you need to explicitly specify the database you want to use (in this case, GRCh37.64). This database must be present in a directory of the same name within the data_dir as defined in snpEff.config.

#java -Xmx4G -jar snpEff.jar eff -v -onlyCoding true -i vcf -o vcf GRCh37.64 1000G.exomes.vcf > snpEff_output.vcf

#java -Xmx4g -jar snpEff.jar  .-o gatk pilon_output.pilon.vcf  > data.eff.gatk.vcf

#java -Xmx4g -jar snpEff.jar /home/mat29/Desktop/SRA2SNPversionCurrent/data/m_tuberculosis_H37Rv_Broad/snpEffectPredictor.bin pilon_output.pilon.vcf > AnnotatedSNPEff.ann.vcf

#java -Xmx16G snpEff.jar  pilon_output.pilon.vcf

java -Xmx10G -jar snpEff.jar -c snpEff.config -s SNPEffOutputStats.html -v -no-downstream -no-upstream m_tuberculosis_H37Rv pilon_output.pilon.vcf > SNPEffSampleGenome_merge.var.ann.vcf




