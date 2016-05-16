start <- function(pkg){
  npkg <- pkg[!(pkg %in% installed.packages()[,"Package"])]
  if (length(npkg))
    install.packages(npkg, dependencies = TRUE)
  lapply(pkg, require, character.only=TRUE)
}

pkgs <- c("rafalib", "ggplot2", "doParallel")
start(pkgs)

source("http://www.bioconductor.org/biocLite.R")

biocLite("bumphunter")

biocLite(c("IlluminaHumanMethylation450kmanifest", 
           "IlluminaHumanMethylation450kanno.ilmn12.hg19", 
           "minfi", 
           "BSgenome.Hsapiens.UCSC.hg19",
           "bsseq",
           "AnnotationHub",
           "GenomicRanges",
           "limma",
           "bumphunter"))