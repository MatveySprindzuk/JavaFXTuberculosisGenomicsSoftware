#!/bin/bash
list=`cat SRAIdFromPythonInput.txt` # list of the SRA record file IDs.
for i in $list
do
	echo $i

	./fastq-dump --split-files $i -v

done
