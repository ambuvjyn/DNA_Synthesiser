# Define server logic
server <- function(input, output) {
  observeEvent(input$generate_sequence, {
    sequence_length <- input$sequence_length
    sequence_name <- input$sequence_name
    color_enabled <- input$color_enabled
    
    # Generate the DNA sequence
    dna_sequence <- paste(sample(c("A", "T", "G", "C"), sequence_length, replace = TRUE), collapse = "")
    
    # Color code the DNA sequence if checkbox is enabled
    if (color_enabled) {
      dna_sequence <- gsub("A", "<span style='color:red'>A</span>", dna_sequence)
      dna_sequence <- gsub("T", "<span style='color:orange'>T</span>", dna_sequence)
      dna_sequence <- gsub("G", "<span style='color:blue'>G</span>", dna_sequence)
      dna_sequence <- gsub("C", "<span style='color:black'>C</span>", dna_sequence)
    }
    
    # Display the generated DNA sequence
    output$dna_sequence_output <- renderUI({
      tags$div(
        HTML(paste("<strong>Sequence Name:</strong> ", sequence_name, "<br>")),
        HTML(paste("<strong>Sequence:</strong><br> ", dna_sequence))
      )
    })
  })
}
