library(shiny)
library(markdown)

# Define UI for the application
ui <- fluidPage(
  titlePanel("DNA Sequence Generator"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("sequence_length", "Sequence Length:",
                  min = 10, max = 100, value = 50),
      textInput("sequence_name", "Sequence Name:", ""),
      checkboxInput("color_enabled", "Enable Color-Coding", value = TRUE),
      actionButton("generate_sequence", "Generate Sequence")
    ),
    mainPanel(
      h3("Generated DNA Sequence:"),
      uiOutput("dna_sequence_output"),
      includeMarkdown("README.md")
    )
  )
)
