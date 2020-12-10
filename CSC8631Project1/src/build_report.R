build_book = function() {
  curDir = getwd()
  bookDir = paste0(getwd(), "/reports")
  
  setwd(bookDir)
  bookdown::render_book("index.Rmd")
  setwd(curDir)
  
  rm(curDir)
  rm(bookDir)
}
