library(testthat)
library(applepie)

test_check("applepie")

# test_that("get_packages() works", {
#   pkgs <- get_packages("maelle")
#   expect_vector(pkgs, character())
#})

test_that("maintainers OK", {
  mtns <- get_maintainers('ggseg')
  expect_equal(dim(mtns), 4)
})

test_that("get_packages() works", {
  vcr::use_cassette("packages", {
    pkgs <- get_packages("maelle")
  })
  expect_vector(pkgs, character())
})
