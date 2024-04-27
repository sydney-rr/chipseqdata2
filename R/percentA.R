#' @title percentA
#' @description function calculates the percentage of the base A in a fasta file
#' @param x is a fasta file
#' @return the percentage of the base A in a fasta file

percentA <-
function(x){
  library(seqinr)
  y <- read.fasta(x)
  my_dataframe <- as.data.frame(y)
  fastalength <- length(my_dataframe[,1])
  A <- length(which(my_dataframe=="a"))
  (A/fastalength)*100
}

#percentA("/Users/sydneyrattey/downloads/2M77821.1.fasta")
