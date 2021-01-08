fetch_facts <- function(x, nchar = 20) {
  GET(x) %>%
    content() %>%
    lapply("[[", "text") %>%
    .[nchar(.) > nchar]
}


enable_mini_sidebar <- function() {
  tags$script(HTML("$('body').addClass('sidebar-mini');"))
}

mini_sidebar_title <- function(full = "catfacts!", mini = ":)") {
  tagList(
    tags$span(
      class = "logo-mini", mini
    ),
    tags$span(
      class = "logo-lg", full
    )
  )
}

enable_favicon <- function() {
  tags$head(
    tags$link(rel = "shortcut icon", href = "favicon.ico"),
    tags$link(rel = "apple-touch-icon", sizes = "180x180", href = "favicon.ico"),
    tags$link(rel = "icon", type = "image/png", sizes = "32x32", href = "/favicon-32x32.png"),
    tags$link(rel = "icon", type = "image/png", sizes = "16x16", href = "/favicon-16x16.png")
  )
}
