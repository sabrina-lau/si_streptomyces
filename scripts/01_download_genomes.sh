#!/usr/bin/env bash
#
# download_genomes.sh
#
# Download FASTA format genomes for phylogenomic reconstruction

# Download files
ncbi-genome-download \
    --section genbank \
    --assembly-accessions ../data/genomes/genomes/accessions/genomic_accessions.txt \
    --formats fasta \
    --output-folder ../data/genomes/genomes \
    --flat-output \
    -v \
    all


# Extract sequences
#gunzip data/genomes/genomes/*.gz