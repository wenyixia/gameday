context("Check dates")

test_that("The date 2014-11-17 is a valid date", {
	expect_true(check_date("2014-11-17"))
})

test_that("The date 20141-1-17 is not a valid date", {
	expect_false(check_date("20141-1-17"))
})


test_that("invalid date input triggers the error", {
	expect_error(gday(team = "canucks", date = "201340-1-20"), "Error")
})

test_that("Wrong date type throws error", {
	expect_error(gday(team = "Bruins", date = "201-411-12"), "Error")
})

test_that("Wrong date type throws error", {
	expect_error(scores(date = "201-411-12"), "Error")
})
