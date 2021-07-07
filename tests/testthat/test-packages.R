

test_that("get_packages() works", {
  skip_if_not_beyonce()
  vcr::use_cassette("blabla", {
    pkgs <- get_packages("maelle")
  })
  expect_vector(pkgs, character())
})
