# Transforms text to vector source then converts to VCorpus
text_mine <- function(text){

  VS <- VectorSource(text)
  VC <- VCorpus(VS)

  return(VC)

}

