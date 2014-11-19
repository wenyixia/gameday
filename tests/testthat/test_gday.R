context("Check gday()")

test_that("Vancouver Canucks had a game against Nashville Predators on 2014-11-02", {
	expect_true(gday(team = "canucks", date = "2014-11-02"))
	expect_true(gday(team = "predators", date = "2014-11-02"))
})

test_that("Washington Capitals did not play on 2014-11-10", {
	expect_false(gday(team = "capitals", date = "2014-11-10"))
	expect_false(gday(team = "washington", date = "2014-11-10"))
})

test_that("gday() always returns logical", {
	expect_is(gday(team = "canucks"), "logical")
})

test_that("The default of gday() returns logical", {
	expect_is(gday(), "logical")
})

test_that("The default of gday() is whether canucks has a gameday on Sys.Date", {
	expect_equal(gday(), gday("canucks", Sys.Date()))
})

test_that("canucks did not have a game day on 2014-11-17", {
	expect_false(gday(team = "canucks", date = "2014-11-17"))
})
