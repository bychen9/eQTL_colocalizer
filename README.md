# ColocQuiaL

This repository contains the code needed to generate dependency files and run ColocQuiaL. Given GWAS signals of your choosing, this pipeline will run COLOC on your signals and all eQTL or sQTL summary statistics that you have available to you. Some examples would be the single-tissue eQTL or sQTL dataset available from GTEx or eQTL Catalogue.

The version of this code used in Bellomo et al. (https://www.medrxiv.org/content/10.1101/2021.05.21.21257493v1) is in the Atherosclerosis_Multi_Trait_GWAS directory.

**Preparing the pipeline:**
- Download files:
  - Download GRCh38 dbSNP BED files from here: https://ftp.ncbi.nih.gov/snp/organisms/human_9606_b151_GRCh38p7/BED/
  - Download tissue specific eQTL or sQTL dataset (e.g., all SNPs tissue specific GTEx v8 files from the GTEx website: https://www.gtexportal.org/home/datasets)
- Generate dependency files:
  - If necessary, create significant pair files from all pairs files. An example of how to create significant pair files for a dataset downloaded from eQTL Catalogue is provided in make_significant_pairs_files.R
        ``Rscript make_significant_pairs_files.R GENCORD_ge_fibroblast.all.tsv.gz``
  - Generate tabix index files for the significant pair files and all pairs files. Examples of how to generate the files for GTEx datasets and eQTL Catalogue datasets are provided in create_tabix_gtex_eqtl_allpairs.sh, create_tabix_gtex_eqtl_sigpairs.sh, create_tabix_gtex_sqtl_allpairs.sh, create_tabix_gtex_sqtl_sigpairs.sh, and create_tabix_eqtl_catalogue.sh.
        ``bash create_tabix_gtex_eqtl_sigpairs.sh Adipose_Subcutaneous.v8.signif_variant_gene_pairs.txt``
  - Run dbsnp_hash_table_maker.py to create hash tables from the GRCh38 dbSNP BED files.
        ``python dbsnp_hash_table_maker.py``
  - Create a tissue summary CSV file (e.g., GTEx_v8_Tissue_Summary_with_filenames.csv and GTEx_v8_sQTL_Tissue_Summary_with_filenames.csv) containing the tissue names, sample sizes, and file names of the tabix files corresponding to your QTL dataset 
  - Create a configuration file for each downloaded QTL dataset based on setup_config.R
  - In colocquial_wrapper.sh, update colocquial_dir to the path to the directory containing colocquial.R, qtl_coloc_template.bsub, and QTL_config_template.R

**Running the pipeline:**
- Create an analysis directory, and add colocquial_wrapper.sh and a qtl_config.sh file modified to correspond to the GWAS signals on which you would like to perform eQTL or sQTL colocalization analysis. In qtl_config.sh, make sure to set setup_config_sh and setup_config_R to the configuration files of the dataset you want to use. 
- Then, execute colocquial_wrapper.sh in that directory
    ``bash ./colocquial_wrapper.sh``

**Running the pipeline on a single GWAS signal:**
- Create an analysis directory, and add colocquial.R and the QTL_config.R file modified from QTL_config_template.R to correspond to the GWAS signal on which you would like to perform eQTL or sQTL colocalization analysis.
- Then, execute colocquial.R in that directory 
    ``Rscript ./colocquial.R``