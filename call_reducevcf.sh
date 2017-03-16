#!/bin/bash
# Reducing the size and filtering content of the Pilon VCF

java -jar reducevcf.jar -i pilon_output.pilon.vcf -o reducedPilonOutputFileFinal.vcf
