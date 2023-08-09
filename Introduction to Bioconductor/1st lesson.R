library(dslabs)

data(heights)
heights[777,1]
max(heights$height)
summary(heights$height)

heights[which.min(heights$height),]

sum(heights$sex == 'Female' & heights$height >= "78")

# install Bioconductor and check version
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("3.15")
BiocManager::version()

# install Bioconductor packages
BiocManager::install("BSgenome.Hsapiens.UCSC.hg19")
BiocManager::install(c("genefilter","geneplotter"))

# load installed packages
library(BSgenome.Hsapiens.UCSC.hg19)
library(genefilter)
library(geneplotter)


# get help through the documentation
help.start()
?mean
help(mean)
help(package="genefilter")

# inspect objects, classes and methods
library(Biobase)    # load one of the core Bioconductor packages
?ExpressionSet
?"ExpressionSet-class"
methods(class = ExpressionSet)

# inspect the source code for functions and methods
read.csv
plotMA
showMethods("plotMA")
getMethod("plotMA","data.frame")

# vignettes teach you how to use various functions in a package
vignette(package="Biobase")
vignette("ExpressionSetIntroduction")
browseVignettes(package="Biobase")

# report key details about your R session
sessionInfo()
