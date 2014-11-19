context("Check helper function check_team()")

test_that("check_team() returns logical", {
	expect_is(check_team("Vancouver"), "logical")
})

test_that("Vancouver does have a NHL team", {
	expect_true(check_team("Vancouver"))
})

test_that("Seattle do not have a NHL team", {
	expect_false(check_team("Seattle"))
})

test_that("Case is ignored in check_team()", {
	expect_equal(check_team("vancouver"), check_team("VANCOUVER"))
})

test_that("city name gives the same results as team name", {
	expect_equal(check_team("vancouver"), check_team("canucks"))
})
