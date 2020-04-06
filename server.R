function(input, output, session) {
  observeEvent(input$go, {
    n <- sample(1:length(cat_facts), 1)

    output$fact <- renderText({
      cat_facts[[n]]
    })

    exportTestValues(
      "n" = n,
      "cat_facts" = cat_facts
    )
  })

  output$contact <- renderReactable({
    exportTestValues("contact" = contact)
    reactable(contact)
  })
}
