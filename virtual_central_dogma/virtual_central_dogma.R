# Load needed libraries
library("shiny")
library("bslib")

# Source UI and server
source("ui.R")
source("server.R")

# Run the Shiny app
shinyApp(ui = ui, server = server)