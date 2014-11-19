context("Check argument 'team' in gday()")

test_that("case is ignored in argument team", {
	expect_equal(gday(team = "canucks"), gday(team = "CANUCKS"))
})

test_that("asking for the city works just as well in argument team", {
	expect_equal(gday(team = "canucks"), gday(team = "Vancouver"))
})

test_that("Seattle does not have a NHL team", {
	expect_error(gday(team = "Seattle"))
})

