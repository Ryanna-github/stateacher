# Automatically generate school name abbreviations
# to be folder names

library(stringr)
library(stringi)
library(tidyverse)

setwd("C:/Users/RY/git/stateacher")
path <- 'Data/'
df <- read.csv('Data/tops_us.csv')

abbr <- str_extract_all(as.character(df$'学校英文名'), pattern = "[A-Z|(]") # 提取大写字母
abbr <- lapply(abbr, function(x){paste(x, collapse = "")})
abbr <- lapply(abbr, function(x){stri_reverse(str_replace(stri_reverse(x), "\\(", '-'))})
abbr <- make.unique(unlist(abbr), sep = "#")

df$'学校缩写' <- abbr
write.csv(df, "tops_us.csv", row.names = FALSE, na = "")

# Initialize folders
for(name in abbr){
  if (!dir.exists(paste0(path, name))){
    dir.create(paste0(path, name))
  }
}





