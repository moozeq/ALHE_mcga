require(mcga)
require(cec2017)
require(GA)

popsize <- 200      #population size
crossprob <- 0.8    #crossing probabilty
mutateprob <- 0.01  #mutation probabilty
elitism <- 1        #how many elite individuals in population
minval <- -100.0    #min bound value
maxval <- 100.0     #max bound value

mcgaDim <- function(d) {                              #function which get dimension num and perform mcga
  chsize <- d                                         #dimensions 10 or 30
  filename <- paste("dim", chsize, ".txt", sep="")    #filename as dim[10|30].txt
  
  for(i in 1:30) {                                    #30 benchmark functions in 10 dimenstions
    evalFunc <-function(x) {return (cec2017(i,x))}    #evaluating function
    maxiter <- (10000*chsize) / popsize               #evaluation based on MaxFES from cec2017 document
    
    for (j in 1:10) { #repeat 10 times
      m <- mcga(
        popsize,
        chsize,
        crossprob,
        mutateprob,
        elitism,
        minval,
        maxval,
        maxiter,
        evalFunc
      )
      line=paste("f",i,";",j,";",m$costs[1],sep="")   #make line of result fi;j;cost, e.g. f3;2;58890.1753145806
      write(line,file=filename,append=TRUE)           #append line to the file dim10.txt
    }
  }
}

mcgaDim(10) #mcga performed on 10 dimensions
mcgaDim(30) #mcga performed on 30 dimensions
