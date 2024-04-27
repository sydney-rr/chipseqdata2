#' @title mapped
#' @description function calculates the number of mapped reads
#' @param x is a bam file
#' @param y is a bam.bai file
#' @return the number of mapped reads

mapped <-
function(x,y){
  library(Rsamtools)
  reads <-BamFile(x,
                  index=y)
  istats <- idxstatsBam(reads)
  sum(istats[,3])
}

#mapped('/Users/sydneyrattey/downloads/2SRR4105763.bam', '/Users/sydneyrattey/downloads/2SRR4105763.bam.bai')
