#!/bin/bash

# Path to the SAM file
SAM_FILE="/home/bioinformatics/workdir/HW6/chr22RNAseq_bow.sam"
# Path to the output histogram file
HIST_FILE="/home/bioinformatics/workdir/HW6/Bow_mapq.hist"

# Generate the MAPQ histogram
awk '($1 !~ /^@/) {print $5}' "$SAM_FILE" | sort -n | uniq -c | awk '{print $1, "\t", $2}'>> "$HIST_FILE"

echo "MAPQ histogram saved to $HIST_FILE"
