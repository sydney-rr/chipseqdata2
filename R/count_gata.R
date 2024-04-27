#' @title count_gata
#' @description function calculates the number of "GATA" sequences in a fasta file
#' @param data is a fasta file
#' @return the number of "GATA" sequences in a fasta file

count_gata <-
function(data) {
  library(seqinr)
  y <- read.fasta(data)
  # Convert the data into a vector
  data_vec <- as.vector(unlist(y))

  # get rid of ""
  data_str <- paste(data_vec, collapse = "")

  # Filter for "gata" sequences and count them
  gata_count <- length(gregexpr("gata", data_str, fixed = TRUE)[[1]])

  # Return the number of "gata" sequences in the file
  return(gata_count)
}

#count_gata("/Users/sydneyrattey/downloads/2M77821.1.fasta")
