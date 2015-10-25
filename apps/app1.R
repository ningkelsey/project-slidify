require(rCharts)
library(ggplot2)
output$nvd3plot<-renderChart({
  p <- ggplot(mtcars, aes_string(x=input$x, y=input$y)) + geom_point() 
  p$set(dom='nvd3plot',width=600)
  p
})