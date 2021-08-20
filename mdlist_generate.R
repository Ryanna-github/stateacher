args <- commandArgs(T)
folder <- args[1]

setwd("C:\\Users\\RY\\git\\stateacher")
dat_tmp = read.csv(paste0(folder, '\\basic_info.csv'))
dat = subset(dat_tmp, regular_employee==1)

namesALL = gsub(' ', '-', dat$name)
namesALL = gsub('--', '-', namesALL)
namesALL = paste0(folder, '-', namesALL, '.md')
print(paste(length(namesALL), "files are created in", folder))
for (name in namesALL){
  file.create(paste0(folder, '/', name))
  # print(name)
}

