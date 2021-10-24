

output$position <- renderPrint({
  id <- input$drop_area_dragging
  top <- input[[paste0(id, '_position')]]$top
  left <- input[[paste0(id, '_position')]]$left
  cat('Now dragging: ')
  cat(sprintf('%s (top: %s, left: %s)', id, top, left))
  cat('\nDropped: ')
  cat(input$drop_area_dropped)
  cat('\nDrop: ')
  cat(input$drop_area_drop)
  cat('\nOut: ')
  cat(input$drop_area_out)
  cat('\nOver: ')
  cat(input$drop_area_over)
})
