#' @title avgreadlength
#' @description function calculates the average read length
#' @param x is a bam file
#' @param y is a bam.bai file
#' @return the average read length

avgreadlength <-
function(x,y){
  library(Rsamtools)
  reads <-BamFile(x,
                  index=y)
  istats <- idxstatsBam(reads)
  mean(istats[,2])
}

#avgreadlength('/Users/sydneyrattey/downloads/2SRR4105763.bam', '/Users/sydneyrattey/downloads/2SRR4105763.bam.bai')
