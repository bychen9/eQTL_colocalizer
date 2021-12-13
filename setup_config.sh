#this bash config file allows you to set the paths to all the dependency file you need to run the qtl colocalizer pipeline
#this config file is required for running the colocalizer pipeline on multiple loci at a time

#provide the path to plink refernce files to be used for plink commands
plink_bfile="/project/voight_selscan/ksiewert/CardioMetaAnalysis/LDL_CHD_Bivar/LDClump/PlinkFilesOnlyRs/mergedBed"
#provide the path to the plink ped files for the list of individuals you wish to use in your LD reference panel
plink_keep="/project/voight_GWAS/wbone/neuro_degenerative_and_cardiometabolic_Bivariate_Scans/AD_bivariate_scan_code/EUR.final.plink"

bsub_queue="voight_long"
