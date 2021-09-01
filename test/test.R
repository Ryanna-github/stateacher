library(yaml)

args <- commandArgs(T)
folder <- args[1]
# folder <- 'CMU-DS'

# setwd("C:/Users/RY/git/stateacher")
setwd('/home/runner/work/stateacher/stateacher/')
f <- list.files(pattern = paste0('.*md$'), recursive = TRUE, full.names = TRUE)
f <- grep(paste0('/Data/', folder), f, value = TRUE)

yaml_test <- function(f){
  # 1. Overal checking
  f_yaml_length <- unlist(lapply(f, function(x) length(unlist(yaml.load_file(x)))))
  if(any(f_yaml_length < 10)) {
    warning('Too Little Filling: Please recheck integrity of YAML')
  }
  for(x in f){
    # 2. Required fields
    x <- yaml.load_file(x)
    valid_name <- names(unlist(x))
    necessary_name <- paste0('bio-current.', 
                             c('name-en', 'univeristy', 'school', 'sex', 'title', 'interests', 'homepage', 'status'))
    if(!all(necessary_name %in% valid_name)){
      warning(paste0('Required fields are not complete: ', paste(necessary_name[!(necessary_name %in% valid_name)], collapse = '/'), '\n  '))
    }
    # 3. Specific rules
    if(!grepl('.* \\[\\S+\\]', x$`bio-current`$school)){
      warning("False Value: 'School' should match format '.* \\[\\S+\\]'")
    }
    valid_title <- c('associate professor', 'assistant professor', 'professor')
    if(is.null(x$`bio-current`$title)){
      warning(paste0("False Value: 'Title' should be one of ", paste(valid_title, collapse = '/')))
    }else if(!grepl('(associate professor|assistant professor|professor)', tolower(x$`bio-current`$title))){
      warning(paste0("False Value: 'Title' should be one of ", paste(valid_title, collapse = '/')))
    }
    valid_status <- c('在读', '在职', '离职', '退休', '亡故')
    if(is.null(x$`bio-current`$status)){
      warning(paste0("False Value: 'Status' should be one of ", paste(valid_status, collapse = '/')))
    }else if(!grepl('(associate professor|assistant professor|professor)', tolower(x$`bio-current`$title))){
      warning(paste0("False Value: 'Status' should be one of ", paste(valid_status, collapse = '/')))
    }
  }
}

