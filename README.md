# si_streptomyces
All scripts required to run the bioinformatics project. 
# All scripts needed
00_install_requirements
001_downloading_genomes
_running_dbcan
_jupyter_notebook


# Reconstruct output

All scripts were run from the root of this directory.

## Install requirements
 `ncbi-genome-download`
 `run_dbcan'
 
 
To install all requirements run the following commands from the root of this directory:
```bash

scripts/00_install_requirements.sh
```
pip3 install ncbi_genome_download
conda install dbcan
conda activate run_dbcan

00_file_install requirements
conda create -n run_dbcan python=3.8 dbcan 
conda install -c conda-forge 
conda install -c bioconda

## Download genomes

ncbi-genome-download \
    --assembly-accessions data/genomic_accessions.txt \
    --formats fasta \
    --output-folder data/genomes/genomes \
    --flat-output \
    -v \
    all


# Extract sequences
gunzip data/genomes/genomes/*.gz


## running_dbcan

mkdir -p ../data/dbcan_results

for fname in ../data/genomes/genomes/GCA*/*.faa #THIS NEEDS TO BE CHANGED TO THE CORRECT FILE PATH
do
    run_dbcan ${fname} protein --out_dir dbcan_results/`basename ${fname}`_output
    #echo ${fname}
done 
