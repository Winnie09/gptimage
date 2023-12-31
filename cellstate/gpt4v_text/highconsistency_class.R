library(rjson)

af <- list.files(paste0('/Users/zj67/Dropbox/research/gptimage/senescence/test/'))
for (fid in 1:5) {
  d <- fromJSON(file=paste0('/Users/zj67/Dropbox/research/gptimage/senescence/run/gpt4v_verbal/feature/',fid,'.json'))
  for (f in af) {
    system(paste0('python3 /Users/zj67/Dropbox/research/gptimage/software/gpt4v_verbalclass.py /Users/zj67/Dropbox/research/gptimage/senescence/test/',f,' "Is the given image more consistent with row 1 or row 2 based on the descriptions below ?\n',d$choices[[1]]$message$content,'" /Users/zj67/Dropbox/research/gptimage/senescence/run/gpt4v_verbal/class/',fid,'_',f,'.json'))
  }
}

