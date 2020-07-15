library(tidyverse)
#######################################################
#######################################################
imageConv <- function(flatImage,size=64){
    matrix(flatImage,nrow=size,byrow=T)
}


flatImage <- function(dat,size=64) {
  img <- imageConv(dat,size)
  image(img,col=grey.colors(256)) 
}

#######################################################
dataDir <- "~/Dropbox/COURSES/ADM/DATA/ZIP_DIGITS_ESL/"
dataTrainFile <- "zipTrainSmall.csv"
zipTrain.df <- read.csv(file.path(dataDir,dataTrainFile),
                        header=T)

## Should be...
## 250 x 257
dim(zipTrain.df)

## Should be...
##  0  1  2  3  4  5  6  7  8  9 
## 31 35 34 28 18 16 17 29 18 24 
table(zipTrain.vals)


############
dataTestFile <- "zipTestSmall.csv"
zipTest.df <- read.csv(file.path(dataDir,dataTestFile),
                       header=T)

## Should be
## 1000 x 257
dim(zipTest.df)
zipTest.vals <- round(zipTest.df[,1],0)

## Should be
##   0   1   2   3   4   5   6   7   8   9 
## 192 127 118  67  91  82  87  74  79  83 
table(zipTest.vals)
#######################################################
