# ColocQuiaL

This repository contains the code needed to generate dependency files and run ColocQuiaL. Given GWAS signals of your choosing, this pipeline will run COLOC on your signals and all the single-tissue eQTLs or sQTLs from GTEx v8, or any other downloaded eQTL or sQTL dataset.

The version of this code used in Bellomo et al. (https://www.medrxiv.org/content/10.1101/2021.05.21.21257493v1) is in the Atherosclerosis_Multi_Trait_GWAS directory.

**Preparing the pipeline:**
- Download files:
  - Download GRCh38 dbSNP BED files from here: https://ftp.ncbi.nih.gov/snp/organisms/human_9606_b151_GRCh38p7/BED/
  - Download tissue specific eQTL or sQTL dataset (e.g., all SNPs tissue specific GTEx v8 files from the GTEx website: https://www.gtexportal.org/home/datasets)
- Generate dependency files:
  - Generate tabix index files for the significant pair files and all pairs files
  - Run dbsnp_hash_table_maker.py to create hash tables from the GRCh38 dbSNP BED files.
  - Create a tissue summary CSV file (e.g., GTEx_v8_Tissue_Summary_with_filenames.csv and GTEx_v8_sQTL_Tissue_Summary_with_filenames.csv) containing the tissue names, sample sizes, and file names of the tabix files corresponding to your QTL dataset 
  - Create a configuration file for each downloaded QTL dataset based on setup_config.R
  - In colocquial_wrapper.sh, update colocquial_dir to the path to the directory containing colocquial.R, qtl_coloc_template.bsub, and QTL_config_template.R

**Running the pipeline:**
- Create an analysis directory, and add colocquial_wrapper.sh and a qtl_config.sh file modified to correspond to the GWAS signals on which you would like to perform eQTL or sQTL colocalization analysis. In qtl_config.sh, make sure to set setup_config_sh and setup_config_R to the configuration files of the dataset you want to use.
- Then, execute colocquial_wrapper.sh in that directory

**Running the pipeline on a single GWAS signal:**
- Create an analysis directory, and add colocquial.R and the QTL_config.R file modified from QTL_config_template.R to correspond to the GWAS signal on which you would like to perform eQTL or sQTL colocalization analysis.
- Then, execute colocquial.R in that directory (e.g., Rscript ./colocquial.R)
