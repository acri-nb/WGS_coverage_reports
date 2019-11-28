### This is a brief user guide for analyzing coverage information from WGS or Exome data using the pipeline developped by eallain (ACRI) on august 7th 2019. ###

Prior to running this pipeline you will need to retrieve BED and UCSC-formateed files for your genome version. The BED file should contain the intervals corresponding to the targeted genes (for WES) and feature names in a 4th column. 
Otherwise these regions can be whichever regions of interest in the genome. See the following link: https://genome.ucsc.edu/cgi-bin/hgTables

You will also require the path to your indexed reference genome. 
For simplicity, the files and examples herein describe an example for a WES run mapped to hg19.
The main input file is an indexed / sorted SAM or BAM file.
Restricting analysis to certain genes for an exome sequencing run will require a gene_list file, with one HGNC official gene name per line.

This pipeline requires GATK version 3.8.1 and R version 3.6.1

######

run GATK. for ACRI users GATK is installed in /home/iarc/bin/GATK/gatk-3/GenomeAnalysisTK-3.8-1-0-gf15c1c3ef/

./Coverage_Analysis_GATK.sh </path/to/jarfile.jar> </path/to/genome.fa> <input.sam> <output_filename> <UCSC.file> <BED.file> <Coverage_threshold> <Genes_List>

######

A file with the suffix sample_gene_summary will be created. This is our main input for Rmarkdown. 
Furthermore, an HTML and PDF report will be generated with scatterplots and histograms describing overall coverage information and statistics. 