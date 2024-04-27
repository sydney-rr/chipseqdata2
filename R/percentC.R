
#' @title percentC
#' @description function calculates the percentage of the base C in a fasta file
#' @param x is a fasta file
#' @return the percentage of the base C in a fasta file

percentC <-
function(x){
  library(seqinr)
  y <- read.fasta(x)
  my_dataframe <- as.data.frame(y)
  fastalength <- length(my_dataframe[,1])
  C <- length(which(my_dataframe=="c"))
  (C/fastalength)*100
}

#percentC("/Users/sydneyrattey/downloads/2M77821.1.fasta")
