% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CountryPopulation.R
\name{CountryPopulation}
\alias{CountryPopulation}
\title{CountryPopulation}
\usage{
CountryPopulation(a)
}
\arguments{
\item{a}{A string of a country name present in WorldPopulation data}
}
\value{
A graph of population against year for that country
}
\description{
Takes a country name present in the WorldPopulation data and retuns a
population against year graph for that country.
}
\examples{
CountryPopulation("China")
CountryPopulation("United States of America")
}
