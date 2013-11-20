
library(govdat)
senate = read.csv("http://compute-cuj.org/data2/day1/nyt_senate.csv", as.is=TRUE)

for(i in 1:nrow(senate)){
  tmp = sll_cw_phrases("legislator",senate$id[i],key="8eab0a74d00544fd898f42a0856b7f08")
  print(paste(senate$last_name[i],tmp$ngram[1]))
}
