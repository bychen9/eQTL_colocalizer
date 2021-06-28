# eQTL_colocalizer

This repository contains the code needed to generate dependency files and run the eQTL colocalizer pipeline. Given GWAS signals of your choosing, this pipeline will run COLOC on your signals and all the GTEx v8 single-tissue eQTLs or sQTLs.

The version of this code used in Bellomo et al. (https://www.medrxiv.org/content/10.1101/2021.05.21.21257493v1) is in the Atherosclerosis_Multi_Trait_GWAS directory.

**Preparing the pipeline:**
- Download files:
  - Download GRCh38 dbSNP BED files from here: https://ftp.ncbi.nih.gov/snp/organisms/human_9606_b151_GRCh38p7/BED/
  - Download all SNPs tissue specific GTEx v8 files from the GTEx website: https://www.gtexportal.org/home/datasets
- Generate dependency files:
  - Generate tabix index files for the GTEx v8 significant pair files and all pairs files
  - Run dbsnp_hash_table_maker.py to create hash tables from the GRCh38 dbSNP BED files.
  - Make sure you also have GTEx_v8_Tissue_Summary_with_filenames.csv and GTEx_v8_sQTL_Tissue_Summary_with_filenames.csv, and update the paths to all dependency files in qtl_colocalizer.R

**Running the pipeline:**
- Create an analysis directory, and add qtl_colocalizer.R, qtl_coloc_template.bsub, QTL_config_template.R, qtl_colocalizer_wrapper.sh, and the qtl_config.sh file modified to correspond to the GWAS signals on which you would like to perform eQTL or sQTL colocalization analysis. 
- Then, execute qtl_colocalizer_wrapper.sh in that directory

**Running the pipeline on a single GWAS signal:**
- Create an analysis directory, and add qtl_colocalizer.R and the QTL_config.R file modified from QTL_config_template.R to correspond to the GWAS signal on which you would like to perform eQTL or sQTL colocalization analysis.
- Then, execute qtl_colocalizer.R in that directory (e.g., Rscript ./qtl_colocalizer.R)

