context("Check scores()")

test_that("Invalid date input throws error in scores()", {
	expect_error(scores(date = "201-411-12"))
})

test_that("scores() always returns a data.frame", {
	expect_is(scores(date = "2014-11-19"), "data.frame")
})

test_that("The default of scores() returns a data.frame", {
	expect_is(scores(), "data.frame")
})

test_that("The default is the games info on Sys.Date", {
	expect_equal(scores(), scores(Sys.Date()))
})
