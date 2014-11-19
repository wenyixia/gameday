#' Is it Gameday?
#'
#' This function returns a data.frame with information about the games on
#' a particular day.
#'
#' You know the problem: You're in your office writing R code and
#' suddenly have the urge to check whether your NHL team has a game today.
#' Before you know it you just wasted 15 minutes browsing the lastest
#' news on your favorite hockey webpage.
#' Suffer no more! You can now ask R directly, without tempting yourself
#' by firing up your web browser.
#'
#' @param date Defaults to today
#' @return Logical \code{TRUE} if \code{team} has an NHL game on a particular \code{date},
#' \code{FALSE} otherwise
#' @keywords misc
#' @note case in \code{team} is ignored
#' @export
#' @examples
#' scores()
#' scores("2014-11-10")
scores <- function(date = Sys.Date()){
	if(internet_connection() == FALSE) {
		stop('Sorry, unable to connect to the Internet.
				    Please check your internet connection.')
	}
	if(check_date(date) == FALSE) {
		stop('Sorry, the date is invalid.')
	}
	url <- paste0("http://live.nhle.com/GameData/GCScoreboard/", date, ".jsonp")
	raw <- RCurl::getURL(url)
	json <- gsub('([a-zA-Z_0-9\\.]*\\()|(\\);?$)', "", raw, perl = TRUE)
	data <- jsonlite::fromJSON(json)$games
	with(data,
			 data.frame(home = paste(htn, htcommon),
			 					 away = paste(atn, atcommon),
			 					 home_score = hts,
			 					 away_score = ats))
}


