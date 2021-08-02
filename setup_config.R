#this R config file allows you to set the paths to all the dependency file you need to run the qtl colocalizer pipeline
# this config file is required for running the colocalizer pipeline on one locus

#provide the path to plink refernce files to be used for plink commands
plink_bfile = "/project/voight_selscan/ksiewert/CardioMetaAnalysis/LDL_CHD_Bivar/LDClump/PlinkFilesOnlyRs/mergedBed"
#provide the path to the plink ped files for the list of individuals you wish to use in your LD reference panel
plink_keep = "/project/voight_GWAS/wbone/neuro_degenerative_and_cardiometabolic_Bivariate_Scans/AD_bivariate_scan_code/EUR.final.plink"
#provide path to GRCh37 to GRCh38 variant hash table directory
hash_table_dir = "/project/voight_GWAS/bychen9/human_9606_b151_GRCh38p7/BED/hash_tables_2/"
#provide path to eqtl tissue table
eQTL_tissue_table = "/project/voight_GWAS/bychen9/eqtl_coloc/GTEx_v8_Tissue_Summary_with_filenames.csv"
#provide path to sqtl tissue table
sQTL_tissue_table = "/project/voight_GWAS/bychen9/sqtl_coloc/GTEx_v8_sQTL_Tissue_Summary_with_filenames.csv"
#provide path to significant eqtl data tabix directory NOTE: don't include last slash
eQTL_sig_qtl_tabix_dir = "/project/voight_datasets/GTEx_v8/eQTL/GTEx_Analysis_v8_eQTL_tabix"
#provide path to the all eqtl data tabix directory
eQTL_all_qtl_tabix_dir = "/project/voight_datasets_01/GTEx_v8/TissueSpecific_tabix/"
#provide path to significant sqtl data tabix directory NOTE: don't include last slash
sQTL_sig_qtl_tabix_dir = "/project/voight_datasets/GTEx_v8/sQTL/GTEx_Analysis_v8_sQTL_tabix"
#provide path to the all sqtl data tabix directory
sQTL_all_qtl_tabix_dir = "/project/voight_viz/bychen9/sQTL_tabix/"
#path to GRCh37 to GRCh38 liftOver chain file
liftOver_chain = "/appl/liftOver-20180423/chains/hg19ToHg38.over.chain"
#path to recombination rate directory (expected to b 1K genmoe chromosome recombination rate files or in the same format as these files: http://ftp.1000genomes.ebi.ac.uk/vol1/ftp/technical/working/20130507_omni_recombination_rates/
recomb_rate_data="/project/voight_GWAS/wbone/recomb_data_dir/CEU/CEU"
