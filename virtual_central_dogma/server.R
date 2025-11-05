library("shiny")
library("bslib")
source("app_functions.R")

server <- function(input, output) {
  dna_seq <- reactive({
    gene_dna(length = input$n_bases, 
             base_probs = c(input$prob_A, input$prob_T, input$prob_C, input$prob_G))
  })
  
  output$dna <- renderText({
    dna_seq()
  })
  
  output$dna_transcribed <- renderText({
    transcribe_dna(dna = input$dna_seq)
  })
  
  output$rna_translated <- renderText({
    translate_rna(rna = input$rna_seq)
  })
  
  output$base_counts <- renderTable({
    base_freqs(dna_seq())
  })
}
