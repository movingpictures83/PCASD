library(SINCERA)

input <- function(inputfile) {
   mySC <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {
# Perform z-score scaling
#sc <- normalization.zscore(mySC, pergroup=FALSE)
# do PCA using all genes
sc <- doPCA(mySC, genes=NULL, use.fast = T)
pdf(paste(outputfile, "pdf", sep="."))
saveRDS(sc, paste(outputfile, "rds", sep="."))
# plot the standard deviation of PCA components
plotPCASD(sc, num.pcs = 20)

}
