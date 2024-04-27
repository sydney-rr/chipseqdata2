#' @title percentG
#' @description function calculates the percentage of the base G in a fasta file
#' @param x is a fasta file
#' @return the percentage of the base G in a fasta file

percentG <-
function(x){
  library(seqinr)
  y <- read.fasta(x)
  my_dataframe <- as.data.frame(y)
  fastalength <- length(my_dataframe[,1])
  G <- length(which(my_dataframe=="g"))
  (G/fastalength)*100
}

##percentG("/Users/sydneyrattey/downloads/2M77821.1.fasta")
