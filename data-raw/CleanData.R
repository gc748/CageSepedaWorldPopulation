library(tidyverse)
library(readxl)

WorldPop <- read_excel('data-raw/World_Population.xlsx', sheet='ESTIMATES', range='A17:BZ306')
WorldPopulation <- WorldPop %>%
  filter(Type == 'Country/Area') %>%
  select(c(`Region, subregion, country or area *`, '1950':'2020')) %>%
  rename(CountryName = `Region, subregion, country or area *`)
  usethis::use_data(WorldPopulation, overwrite = TRUE)
