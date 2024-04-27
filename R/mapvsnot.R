#' @title mapvsnot
#' @description function calculates the total number of reads (mapped and unmapped)
#' @param x is a bam file
#' @param y is a bam.bai file
#' @return the total number of reads (mapped and unmapped)

mapvsnot <-
function(x,y){
  library(Rsamtools)
  reads <-BamFile(x,
                  index=y)
  istats <- idxstatsBam(reads)
  add <- sum(istats[,3])
  add + istats[1,4]
}

#mapvsnot('/Users/sydneyrattey/downloads/2SRR4105763.bam', '/Users/sydneyrattey/downloads/2SRR4105763.bam.bai')
