context("Check gday")

test_that("check team", {
	expect_true(gday(team = "vancouver"))
})

test_that("check team", {
	expect_error(gday(team = "seattle"))
})

test_that("case is ignored", {
	expect_equal(gday(team = "canucks"), gday(team = "CANUCKS"))
})

test_that("always returns logical", {
	expect_is(gday(team = "canucks"), "logical")
})

test_that("The default returns logical", {
	expect_is(gday(), "logical")
})

test_that("The default is whether canucks has a gameday on Sys.Date", {
	expect_equal(gday(), gday("canucks", Sys.Date()))
})

test_that("canucks did not have a game day on 2014-11-17", {
	expect_false(gday(team = "canucks", date = "2014-11-17"))
})

test_that("asking for the city works just as well", {
	expect_equal(gday(team = "canucks"), gday(team = "Vancouver"))
})

test_that("Seattle does not have a NHL team", {
	expect_error(gday(team = "Seattle"))
})

test_that("Vancouver Canucks had a game against Nashville Predators on 2014-11-02", {
	expect_true(gday(team = "canucks", date = "2014-11-02"))
	expect_true(gday(team = "predators", date = "2014-11-02"))
})

test_that("Washington Capitals did not play on 2014-11-10", {
	expect_false(gday(team = "capitals", date = "2014-11-10"))
	expect_false(gday(team = "washington", date = "2014-11-10"))
})
