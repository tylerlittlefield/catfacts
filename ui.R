tagList(
  includeCSS("www/custom.css"),
  navbarPage(
    id = "tabs",
    title = "cat facts",
    tabPanel(
      title = "hello",
      icon = icon("smile"),
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
    ),
    tabPanel(
      title = "about",
      icon = icon("info"),
      reactableOutput("contact")
    )
  )
)
