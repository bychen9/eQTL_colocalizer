#Code to collect the QTL colocalization results after they have all been generated.

#set variables for date and time
today=`date +%F`
now=`date +%T`

#load config file
. qtl_config.sh

#write header to the summary results file
printf "SNP\tGene\tGeneID-Tissue\tTrait\tPPID\tPP\n" > $qtlType"_coloc_results_all_summary_"$today"_"$now".txt" 

#go through each lead SNP directory
for dir in ./rs*/
do
    echo $dir
    dirname=`echo $dir | tr "/" "\t" | cut -f 2`
    echo $dirname

    cd  $dir

    #for each GTEx coloc output in the directory
    for colocOut in ./*coloc_results_summary.txt
    do
        echo $colocOut
        colocfilename=`basename $colocOut`
        echo $colocfilename

        #save a "trait" string for formatting
        trait_str="_"$trait"_"

        #grab the information we need from the locus coloc results file
        sed "s/^/$colocfilename /" $colocOut | sed "s/^/$dirname /" | sed "s,$trait_str, $trait," | sed "s/coloc_results_summary.txt//" | sed "s/_ENSG/ ENSG/"| tr " " "\t" | tail -n+3 >> $qtlType"_coloc_results_all_summary_"$today"_"$now".txt"

    done

    cd ..

done

#run Rscript to generate a file with PP3, PP4, and PP4/(PP3 + PP4) for each lead SNP-Gene-Tissue result.
Rscript ./summarize_qtl_coloc_PP3_PP4_results.R $qtlType"_coloc_results_all_summary_"$today"_"$now".txt"

echo "Your summary QTL file is ready!" 




