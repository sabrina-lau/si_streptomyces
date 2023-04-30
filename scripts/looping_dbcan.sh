#Extract sequences
gunzip data/genomes/genomes/*.gz

mkdir -p dbcan_results

for fname in ../data/genomes/genomes/GCA*/*.faa
do
    run_dbcan ${fname} protein --out_dir dbcan_results/`basename ${fname}`_output
    #echo ${fname}
done 

#data/ncbi-genomes-2022-11-16/genbank/bacteria/
#GCA_000010605.1/GCA_000010605.1_ASM1060v1_protein.faa protein --out_dir result
#for fname in result/bacteria_copy/GCA*/*.faa

/Users/sabrinalau/Desktop/Year_5/master_thesis/data/looping_dbcan.sh