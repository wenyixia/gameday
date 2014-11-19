context("Check argument 'date' in gday()")

test_that("invalid date input triggers the error", {
	expect_error(gday(team = "canucks", date = "201340-1-20"), "Error")
})

test_that("The default of date is Sys.Date() in gday()", {
	expect_equal(gday(team = "canucks"), gday(team = "canucks", date = Sys.Date()))
})
