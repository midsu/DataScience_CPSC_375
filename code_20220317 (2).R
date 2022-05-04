library(class)
library(tidyverse)
trainindex <- sample(1:150, 100)
trainfeatures <- iris[trainindex, 1:4]
trainfeatures %>% view()
trainlabels <- iris[trainindex, 5]
testindex <- setdiff(1:150, trainindex)
testfeatures <- iris[testindex, 1:4]
testlabels <- iris[testindex, 5]
predicted <- knn(train=trainfeatures, test=testfeatures, cl=trainlabels)
table(testlabels, predicted)

(50-16)/(100-16)
normalize <- function(x) { return ((x-min(x)) / (max(x)-min(x)) )}
normalize(c(16, 50, 37, 100))
iris %>% mutate(Sepal.Width.norm=normalize(Sepal.Width)) %>% view()
