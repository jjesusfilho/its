library(shiny)
library(JurisVis)

ui <- fluidPage(

    titlePanel("WHOQOL"),

    sidebarLayout(
        sidebarPanel(
            selectInput("grafico",
                        "Selecione a base",
                        choices = c("ia" = "Inseridos ABM",
                                    "aabm" = "Atendidos ABM"),
                                    "ibaixada" = "Inseridos Baixada",
                                    "abaixada" = "Atendidos Baixada"))


        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("distPlot")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white')
    })
}

# Run the application
shinyApp(ui = ui, server = server)
