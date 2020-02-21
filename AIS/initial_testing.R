library(ggplot2)
library(readxl)

read_inputs <- function(path='AIS/input/Aggregate_MD_VA_Data_Original.xlsx', tab="analysis") {
  return(read_xlsx(path = path, sheet = tab))
}

format_inputs <- function() {
  xl <- read_inputs()
  xl$Score <- as.factor(xl$Score)
  
  return(xl)
}

prep_chi_square_tbl <- function() {
  ais_info <- format_inputs()
  
  return(table(ais_info$State, ais_info$Score))
}

chisq_test <- function() {
  return(chisq.test(prep_chi_square_tbl()))
}