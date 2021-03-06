#' @importFrom utils select.list
#' @importFrom hunspell dictionary hunspell_check hunspell_suggest
suggestNames <- function(x, custom = F){
  if(custom == F){
    dic.path <- system.file("dict", "macro_dictionary.txt", package="biomonitoR")
    dictio <- dictionary(dic.path, cache = F)
  }
  if(custom == T){
    dic.path <- c(paste(getwd(),"/custom_dictio.dic", sep=""))
    dictio <- dictionary(dic.path, cache = F)
  }
  taxaCar <- as.character(x$Taxa)


  # replace space with underscore to be compatible with hunspell
  taxaCar <- gsub(" ",'_',taxaCar)

  # nameCheck and nameSuggest check for the wrong names and suggest for correct names.
  # hunspell_check and hunspell_suggest are from the package hunspell
  nameCheck <- hunspell_check(taxaCar, dict = dictio)
  nameSuggest <- hunspell_suggest(taxaCar, dict = dictio)


  n <- which(nameCheck==F) #number of wrong names
  if(length(n) == 0){
    return(n)
  }
  else{
  temp <- rep(NA, length(n)) # vector to store user choices
  wrongName <- as.vector(x[n,"Taxa"]) # vector of wrong taxa names
  correctName <- nameSuggest[n] # list of suggestions
  for(i in 1:length(n)){
    choice <- c(correctName[[i]]) # choices provided to the user
    # provide suggestions to the user and if the user can't find the correct name he can enter
    # the right name by himself
    temp[i] <- select.list(choice, title=wrongName[i])
  }
  # Remove hashtag for a standalone function
  Sys.unsetenv(dic.path)
  return(list("wrongNames" = wrongName, "correctNames" = temp))
  }
}
