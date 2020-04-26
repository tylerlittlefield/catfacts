dashboard_sidebar <- function() {
  dashboardSidebar(
    sidebarMenu(
      id = "sidebar",
      menuItem("Main", tabName = "main", icon = icon("smile")),
      menuItem("About", tabName = "about", icon = icon("question"))
    )
  )
}
