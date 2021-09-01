library(yaml)

# setwd("C:/Users/RY/git/stateacher")
setwd('home/runner/work/stateacher/stateacher/')
f <- list.files(pattern = paste0('.*md$'), recursive = TRUE, full.names = TRUE)
f <- grep('/Data/', f, value = TRUE)
f_yaml_length <- unlist(lapply(f, function(x) length(unlist(yaml.load_file(x)))))

if(any(f_yaml_length<15)) {
  warning(' < 5')
}

md_Stat = function(x, section = templateNames) {
  txt = readLines(x, encoding = 'UTF-8')
  txt_N = length(txt)
  txt_nchar = nchar(txt)
  txtSectionInd = grep('^# ', txt)
  ind_N = length(txtSectionInd)
  
  ind1 = txtSectionInd + 1
  ind2 = c(txtSectionInd[-1] - 1, txt_N)
  
  # 乘数调整
  flag = 1 * (sign(ind2 -ind1) > 0.5)   
  tab = unlist(lapply(1:length(ind1), 
                      function(i) flag[i] * sum(txt_nchar[ind1[i]:ind2[i]])))
  # 减去![name](link)的长度
  tab[1] = tab[1] - 13
  names(tab) = grep('^# ', txt, value = TRUE)
  tab[which(is.na(tab))] = 0
  return(tab)
}

md_tab = unlist(lapply(f, function(x) sum(md_Stat(x)>0)))
dat = data.frame(id = seq_len(length(f)), name = f, yaml_inut = f_yaml_length, md_input = md_tab)