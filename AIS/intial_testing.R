library(ggplot2)
library(readxl)

read_inputs <- function(path='AIS/input/Aggregate_MD_VA_Data_Original.xlsx', tab="analysis") {
  return(read_xlsx(path = path, sheet = tab))
}