tab_main <- function() {
  tabItem(
    tabName = "main",
    fluidPage(
      fluidRow(
        column(
          width = 12,
          align = "center",
          actionButton("go", "Go!", icon = icon("arrow-circle-right")),
          br(),
          br()
        ),
        column(
          width = 6,
          offset = 3,
          align = "center",
          textOutput("fact")
        )
      )
    )
  )
}

tab_about <- function() {
  tabItem(
    tabName = "about",
    fluidPage(
      reactableOutput("contact")
    )
  )
}
