Pi <- function(x, index="Shannon", base=2){
  ntaxa <- length(x[x>0])
  abu <- sum(x) # calculates total abundance of the vector
  relAbu <- x/abu #calculates the relative abundance
  if(index=="Shannon"){
    temp <- relAbu*log(relAbu,base)
    indValue <- -sum(temp[is.finite(temp)])
  }
  if(index=="Simpson"){
    indValue <- 1-sum(relAbu^2)
  }
  if(index=="Margalef"){
    indValue <- (ntaxa-1)/log(abu)
  }
  if(index=="Menhinick"){
    indValue <- ntaxa/sqrt(abu)
  }
  return(indValue)
}
