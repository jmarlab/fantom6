### gencode v27 noncoding RNA annotations
library(GenomicFeatures)
gtfFile = "Downloads/gencode.v27.long_noncoding_RNAs.gtf"

txdb <- makeTxDbFromGFF(gtfFile,format="gtf")

noncodingGenes<- genes(txdb)

save(noncodingGenes,file="noncodingGenes_GenomicRanges.RData")