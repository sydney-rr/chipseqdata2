#' @title percentT
#' @description function calculates the percentage of the base T in a fasta file
#' @param x is a fasta file
#' @return the percentage of the base T in a fasta file

percentT <-
function(x){
  library(seqinr)
  y <- read.fasta(x)
  my_dataframe <- as.data.frame(y)
  fastalength <- length(my_dataframe[,1])
  Te <- length(which(my_dataframe=="t"))
  (Te/fastalength)*100
}

#percentT("/Users/sydneyrattey/downloads/2M77821.1.fasta")
