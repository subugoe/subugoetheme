#' State- and University Library of Göttingen [pkgdown](http://pkgdown.r-lib.org) template
#'
#' @section Usage:
#' To use this template for your pkgdown website, list {subugoetheme} in your `DESCRIPTION` and add to your `_pkgdown.yml`:
#'
#' ```yaml
#' template:
#'   package: subugoetheme
#' ```
#' 
#' To update your website, install the current version of {subugoetheme} and re-run `pkgdown::build_site()` locally or in your CI.
#'
#' @section Features:
#' As a result, your website will:
#'
#' - Use the [**bootswatch `cosmo` bootstrap theme**](https://bootswatch.com/3/cosmo/) with an inverse navbar.
#'   The corresponding settings in you `_pkgdown.yml` (`template: params: bootswatch`, `navbar: type: inverse`) are ignored.
#' - Display in a University of Göttingen **color scheme**.
#'    This is determined by the `ugoe_bootswatch.css`, which is compiled from `ugoe_colors.less`.
#'    The colors were added and downloaded via https://www.bootstrap-live-customizer.com.
#' - Include the **SUB wordmark** in your website as `sub_wordmark.jpg`.
#'    The wordmark is included in the custom footer.
#' - Expose the SUB twitter account [`@subugoe`](https://twitter.com/subugoe) as **opengraph [metadata](https://pkgdown.r-lib.org/articles/metadata.html)** (`twitter: site`).
#' 
#' For additional features, see [muggle](http://subugoe.github.io/muggle/).
#'
#' @section Analytics:
#' Instead of Google Analytics, this template includes a tracking code for `matomo.gwdg.de` on every website.
#' Matomo is an open-source alternative to Google Analytics, here hosted by the [GWDG](http://matomo.gwdg.de).
#' 
#' The following SUB employees have access to the analytics: 
#' - [Najko Jahn](https://www.sub.uni-goettingen.de/kontakt/personen-a-z/personendetails/person/najko-jahn/)
#' - [Maximilian Held](https://www.sub.uni-goettingen.de/kontakt/personen-a-z/personendetails/person/maximilian-held/)
#' - `scholcomm-analytics@sub.uni-goettingen.de`, a function account for [WAG](https://www.sub.uni-goettingen.de/kontakt/abteilungen-a-z/abteilungs-und-gruppendetails/abteilunggruppe/wissen-als-gemeingut/) data products.
#'
#' @section Maintenance:
#' To pull in upstream changes from {pkgdown} into *this* package, it may be ocassionally neccessary to update the files in `inst/pkgdown/templates` which have been minimally adapted from their original counterparts in {pkgdown}.
#'
#' To learn more about pkgdown templates, read [here](https://pkgdown.r-lib.org/reference/build_site.html) or consider [these](https://github.com/ropensci/rotemplate) [examples](https://tidytemplate.tidyverse.org).
#'
#' @return named list of paths to assets and templates for web design
#'
#' @family corporate identity
#'
#' @export
pkgdown_template <- function() {
  path_root <- system.file("pkgdown", package = "subugoetheme")
  list(
    assets = list(
      css = fs::path(path_root, "assets", "ugoe_bootswatch.css"),
      logo = fs::path(path_root, "assets", "sub_logo.svg"),
      wordmark = fs::path(path_root, "assets", "sub_wordmark.jpg")
    ),
    templates = list(
      footer = fs::path(path_root, "templates", "footer.html"),
      head = fs::path(path_root, "templates", "head.html"),
      navbar = fs::path(path_root, "templates", "navbar.html")
    )
  )
}
