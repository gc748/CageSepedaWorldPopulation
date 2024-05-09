#' CountryPopulation
#'
#' Takes a country name present in the WorldPopulation data and retuns a
#' population against year graph for that country.
#'
#' @param a A string of a country name present in WorldPopulation data
#' @return A graph of population against year for that country
#' @examples
#' CountryPopulation("China")
#' CountryPopulation("United States of America")
#' @export
CountryPopulation <- function(a){
  CountryGraph <- WorldPopulation %>%
    pivot_longer(2:72, names_to = 'Year', values_to = 'Population') %>%
    filter(CountryName==a)
  ggplot(CountryGraph, aes(x = Year, y = as.numeric(Population))) +
    geom_point() +
    scale_x_discrete(breaks=c(1960, 1970, 1980, 1990, 2000, 2010)) +
    ylab("Population") +
    labs(title=a)
}
