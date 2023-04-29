clean <- function(corpus){

  # Convert text to lower case
  words.corpus <- tm_map(corpus, content_transformer(tolower))

  # Remove punctuation from document
  words.corpus <- tm_map(corpus, removePunctuation)

  # Remove numbers from document
  words.corpus <- tm_map(corpus, removeNumbers)

  # Remove common stop words in the english language
  words.corpus <- tm_map(corpus, removeWords, stopwords("en"))

  # Converts word corpus to term document matrix
  tdm <- TermDocumentMatrix(corpus)

  return(tdm)

}


