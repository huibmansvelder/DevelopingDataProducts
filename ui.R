# example from class Shiny2.2

library(shiny)

shinyUI(fluidPage(

    # Application title
    titlePanel("From Miles per Gallon to Horse Power of your car"),
    sidebarLayout(
        sidebarPanel(
            checkboxInput("showModel1", "Show/Hide linear model", value=FALSE),
            checkboxInput("showModel2", "Show/Hide split model", value=FALSE),
            checkboxInput("showModel3", "Show/Hide exponential model", value=FALSE),
            sliderInput("sliderMPG",
                        "What is the MPG of the car?",
                        min = 10,
                        max = 35,
                        value = 20),
            submitButton("Submit")
        ),
        mainPanel(
            h4("Instructions to get Horse Power predictions from MPG values"),
            h4("First, on the left, select preferred fitted model."), 
            h4("Next, move slider to the 'MPG' of your car."),
            h4("Finally, hit the submit button to get the HP predictions!"),
            plotOutput("plot1"),
            h5("Predicted Horsepower from linear model"),
            textOutput("pred1"),
            h5("Predicted Horsepower from split linear model"),
            textOutput("pred2"),
            h5("Predicted Horsepower from exponential model"),
            textOutput("pred3")
        )
    )
))
