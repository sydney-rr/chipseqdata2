#' @title percentunmapped
#' @description function calculates the percentage  of unmapped reads
#' @param x is a bam file
#' @param y is a bam.bai file
#' @return the percentage  of reads that were NOT mapped to the genome

percentunmapped <-
  function(x,y){
    library(Rsamtools)
    reads <-BamFile(x,
                    index=y)
    istats <- idxstatsBam(reads)
  add <- sum(istats[,3])
  total <- add + istats[1,4]
  (istats[1,4] / total)*100
}

#percentunmapped('/Users/sydneyrattey/downloads/2SRR4105763.bam', '/Users/sydneyrattey/downloads/2SRR4105763.bam.bai')
