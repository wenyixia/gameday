gameday
=======================

`gameday` is a R package that could help you check:
* Whether you NHL team has a gameday on a particular day?
* What's the game results of the NHL teams on a particular day?

in a fast and easy way.

Here is a brief guidline of how to use and/or test it.

### Install and test drive

* Install `gameday` from GitHub:
```
devtools::install_github("wenyixia/gameday")
```

* Load and test it:

```
library(gameday)
```
 
* Try out some functions:
```
?gday
?score
?arena_team
gday("canucks")
gday("Vancouver", "2014-11-09")
score()
score("11111")
...
```
* use `browseVignettes(package = "gameday")` to read vignettes


### Clone my gameday repository

* Go to my [gameday repository](https://github.com/wenyixia/gameday)

* Clone URL

* In R Studio: 
    *File > New Project > Version Control > Git > Repository URL:`https://github.com/wenyixia/gameday.git` > Create Project*

* Try out some tests:

```
devtools:test() in R Console
Build > Check in R Studio
Build > Build & Reload in R Studio
...
```
* use `browseVignettes(package = "gameday")` to read vignettes

### gameday vignettes

* Here is the [HTML Preview](http://htmlpreview.github.io/?https://raw.githubusercontent.com/wenyixia/gameday/master/overview.html) of the gameday vignette

* Here is the [link](http://127.0.0.1:21408/session/Rvig.2a446b5327fb.html) created by `browseVignettes(package = "gameday")` 
