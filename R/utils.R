fetch_facts <- function(x, nchar = 20) {
  GET(x) %>%
    content() %>%
    .[["all"]] %>%
    lapply("[[", "text") %>%
    .[nchar(.) > nchar]
}
