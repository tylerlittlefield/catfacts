dashboard_sidebar <- function() {
  dashboardSidebar(
    sidebarMenu(
      menuItem("Main", tabName = "main", icon = icon("smile")),
      menuItem("About", tabName = "about", icon = icon("question"))
    )
  )
}
