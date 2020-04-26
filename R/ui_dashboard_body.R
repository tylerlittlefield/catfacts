dashboard_body <- function() {
  dashboardBody(
    includeCSS("www/custom.css"),
    enable_mini_sidebar(),
    enable_favicon(),
    tabItems(
      tab_main(),
      tab_about()
    )
  )
}
