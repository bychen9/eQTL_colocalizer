#ID for user's trait of interest. (Can be any string)
trait="BRCAN"
#path to the input files
traitFilePath="/project/voight_datasets/GWAS/18_brcan/icogs_onco_gwas_meta_overall_breast_cancer_summary_level_statistics_jun20_withrsIDs.txt"
#column IDs from trait file
trait_A1col="Effect.Gwas"
trait_A2col="Baseline.Gwas"
trait_SNPcol="rsid"
trait_CHRcol="chr.iCOGs"
trait_BPcol="Position.iCOGs"
trait_Pcol="P.value.Gwas" 
trait_Ncol="NumCalled.iCOGs" 
trait_MAFcol="Freq.Gwas"
#trait info not in the input file
#traitType is set either to "cc" or "quant"
traitType="cc"
#This is the proportion of samples that are cases in a case control GWAS, if you are using a quantitative trait this should be set to "". traitProp = cases / case + controls
traitProp=0.536671 #look this up
#path to lead SNPs file, set as empty string to use plink to identify lead SNPs from the GWAS summary stat file
leadSNPsFilePath=""
#qtlType is set to "eqtl" or "sqtl"
qtlType="eqtl"
#colc window size in bps, this is only required when no leadSNPsFilePath is set. If you are providing a leadSNPsFile leave the empty string field for  window
window=""
