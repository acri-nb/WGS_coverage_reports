JAR=$1
GENOME=$2
INFILE=$3
OUTFILE=$4
UCSC=$5
BED=$6
GL=$7
java -jar $JAR -T DepthOfCoverage -R $GENOME -o $OUTFILE -I $INFILE -L $BED -geneList $UCSC -ct 10 ;
echo "Generating report for $(pwd)/$OUTFILE.sample_gene_summary";
Rscript --vanilla -e "rmarkdown::render('HTML_CovReport_v1_WES.Rmd', knit_root_dir = '$(pwd)')" --args $OUTFILE.sample_gene_summary $GL $BED $UCSC $OUTFILE.sample_interval_summary $OUTFILE
