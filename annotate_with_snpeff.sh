#!/bin/bash
#java -Xmx10G -jar snpEff.jar -c snpEff.config -s SNPEffBBmapOutputStats.html -v -no-downstream -no-upstream m_tuberculosis_H37Rv BBMap_variant_call.vcf> SNPEffBBmapGenome_merge.var.ann.vcf

#java -Xmx10G -jar snpEff.jar -c snpEff.config -s SNPEffBBmapOutputStats.html - m_tuberculosis_H37Rv BBMap_variant_call.vcf> SNPEffBBmapGenome_merge.var.ann.vcf
#!/bin/bash


java -Xmx5G -jar snpEff.jar -c snpEff.config -s PilonSNPEffOutputStats.html -v -no-downstream -no-upstream m_tuberculosis_H37Rv VTPilonVCF.vcf > PilonAnnotatedSNPeffResults.vcf



