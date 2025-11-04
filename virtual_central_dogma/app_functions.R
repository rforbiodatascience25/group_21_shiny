gene_dna <- function(length, base_probs = c(0.25, 0.25, 0.25, 0.25)){
  if( length %% 3 != 0 ){
    stop("The argument to the parameter 'l' has to be divisible by 3")
  }
  if(abs(sum(base_probs)-1) >= 1e-5){
    stop("The probabilities in base_probs need to sum to 1")
  }
  dna_vector <- sample(
    x = c("A", "T", "C", "G"),
    size = length,
    replace = TRUE,
    prob = base_probs)
  dna_string <- paste0(
    x = dna_vector,
    collapse = "")
  return(dna_string)
}

# Virtual RNA polymerase
transcribe_dna <- function(dna){
  rna <- gsub(
    pattern = "T",
    replacement = "U",
    x = dna)
  return(rna)
}
