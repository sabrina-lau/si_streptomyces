# **SL *Streptomyces* project**

All scripts required to run the bioinformatics project.

## Requirements

* `ncbi-genome-download`
* `run_dbcan`

All scripts used to generate the analysis for this project are found in the `scripts/` subdirectory, and can be run in order to regenerate the analysis:

```bash
scripts/01_download_genomes.sh
looping_dbcan.sh
dbcan_results data tidying and analysis.ipynb
```

## Directory tree

## Reproducing analyses

### 1. Download genomes

Genomes were downloaded from NCBI using [`ncbi-genome-download`] 

### 2. Run dbCAN to predict CAZyme functions

### 3. Jupyter notebook to reproduce results analysis
