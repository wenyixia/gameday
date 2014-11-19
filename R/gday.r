#' Is it Gameday?
#'
#' This function returns TRUE if your NHL team plays on a particular day
#' and FALSE otherwise
#'
#' You know the problem: You're in your office writing R code and
#' suddenly have the urge to check whether your NHL team has a game on a particular day.
#' Before you know it you just wasted 15 minutes browsing the lastest
#' news on your favorite hockey webpage.
#' Suffer no more! You can now ask R directly, without tempting yourself
#' by firing up your web browser.
#'
#' @param team Defaults to "canucks"
#' @param date Defaults to today
#' @return Logical \code{TRUE} if \code{team} has an NHL game on a particular \code{date},
#' \code{FALSE} otherwise
#' @keywords misc
#' @note case in \code{team} is ignored
#' @note city name gives the same results as team name
#' @export
#' @examples
#' gday()
#' gday("canadiens", "2014-11-17")
#' gday("Bruins")
#' gday("Vancouver")
gday <- function(team = "canucks", date = Sys.Date()) {
	if(internet_connection() == FALSE) {
		stop('Sorry, unable to connect to the Internet.
				    Please check your internet connection.')
	}
	if(check_date(date) == FALSE) {
		stop('Sorry, the date is invalid.')
	}
	if(check_team(team) == FALSE) {
		stop('Sorry, the city does not have an NHL team or the name has a typo.')
	}
	url <- paste0("http://live.nhle.com/GameData/GCScoreboard/", date, ".jsonp")
	grepl(team, RCurl::getURL(url), ignore.case=TRUE)
}


