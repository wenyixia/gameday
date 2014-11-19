context("Check helper function check_date")

test_that("check_date() returns logical", {
	expect_is(check_date(Sys.Date()), "logical")
})

test_that("The date 2014-11-17 is a valid date", {
	expect_true(check_date("2014-11-17"))
})

test_that("The date 20141-1-17 is not a valid date", {
	expect_false(check_date("20141-1-17"))
})




