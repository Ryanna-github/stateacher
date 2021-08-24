library(readr)
library(stringr)

args <- commandArgs(T)
folder <- args[1]

setwd("C:/Users/RY/git/stateacher")
path = paste0('Data/',folder)
dat_tmp = read.csv(paste0(path, '/pre_info.csv'), stringsAsFactors = FALSE)
dat = dat_tmp
# dat = subset(dat_tmp, regular_employee==1) # ?Զ???ɸѡ????

namesALL = gsub(' ', '-', dat$name)
namesALL = gsub('--', '-', namesALL)
namesALL = paste0(folder, '-', namesALL, '.md')

tpl <- read_file('template.md')
schools <- read.csv('Data/tops_us.csv', stringsAsFactors = FALSE)
fail_counter <- 0

# Automatic filling
for (i in 1:nrow(dat)){
  back_info <- unlist(str_split(schools$'ѧУӢ????'[which(schools$'ѧУ??д' == folder)], "\\(|\\)"))
  url <- schools$'??ҳ'[which(schools$'ѧУ??д' == folder)]
  md <- str_replace(tpl, 'name-en: ', paste0('name_en: ', dat$name[i])) %>%
    str_replace('email: ', paste0('email: \r\n    - ', dat$personemail[i], " ")) %>%
    str_replace("university: ", paste0('university: ', back_info[1])) %>%
    str_replace("school: ", paste0('school: ', back_info[2], ' [', url, '] ')) %>%
    str_replace("title: ", paste0('title: ', dat$title[i])) %>%
    str_replace("homepage: ", paste0('homepage: \r\n    - ', dat$homepage[i], " ")) %>%
    str_replace("\\!\\[\\]\\(\\)", paste0('![', dat$name[i], '](', dat$profile[i], ')'))
  if (file.exists(paste0(path, '/', namesALL[i]))){
    print(paste(paste0('Warning: ', path, '/', namesALL[i]), 'already existed!'))
    fail_counter <- fail_counter + 1
  }else{
    write_file(md, paste0(path, '/', namesALL[i]))
  }
}
print(paste(length(namesALL)-fail_counter, "files are initialized in", folder))

       