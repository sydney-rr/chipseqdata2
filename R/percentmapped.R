#' @title percentmapped
#' @description function calculates the percentage  of mapped reads
#' @param x is a bam file
#' @param y is a bam.bai file
#' @return the percentage  of reads that were mapped to the genome

percentmapped <-
function(x,y){
  library(Rsamtools)
  reads <-BamFile(x,
                  index=y)
  istats <- idxstatsBam(reads)
  add <- sum(istats[,3])
  total <- add + istats[1,4]
  (add / total)*100
}

#percentmapped('/Users/sydneyrattey/downloads/2SRR4105763.bam', '/Users/sydneyrattey/downloads/2SRR4105763.bam.bai')
