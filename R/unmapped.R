#' @title percentunmapped
#' @description function displays the number  of unmapped reads
#' @param x is a bam file
#' @param y is a bam.bai file
#' @return the number  of reads that were NOT mapped to the genome

unmapped <-
  function(x,y){
    library(Rsamtools)
    reads <-BamFile(x,
                    index=y)
    istats <- idxstatsBam(reads)
  istats[1,4]
}

#unmapped('/Users/sydneyrattey/downloads/2SRR4105763.bam', '/Users/sydneyrattey/downloads/2SRR4105763.bam.bai')
