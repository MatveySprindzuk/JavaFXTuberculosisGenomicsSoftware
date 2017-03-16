#!/bin/bash
# Calling SNPEff annotation software
java -Xmx5G -jar snpEff.jar -c snpEff.config -s PilonSNPEffOutputStats.html -v -no-downstream -no-upstream Customtuberculosis DecomposedPilonReducedresult.vcf > PilonAnnotatedSNPeffResults.vcf # running annotation on a non-normalized VCF

#java -Xmx5G -jar snpEff.jar -c snpEff.config -s PilonSNPEffOutputStats.html -v -no-downstream -no-upstream #m_tuberculosis_H37Rv VTPilonVCF.vcf > PilonAnnotatedSNPeffResults.vcf



