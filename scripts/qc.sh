#! /bin/bash -l
#load HPC 
module load fastp/0.20.0-gcc-13.2.0
fastp \
-i sample_R1 .fastq.gz \
-I sample_R2 .fastq.gz \
-o sample_R1 .trim.fastq.gz \
-O sample_R2 .trim.fastq.gz \ 
--length_required 30 \
--qualified_quality_phred 20
