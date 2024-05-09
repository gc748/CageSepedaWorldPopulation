test_that('CountryPopulation', {
  expect_error(CountryPopulation("Imaginary Country"))
  expect_error(CountryPopulation(NotString))
})
