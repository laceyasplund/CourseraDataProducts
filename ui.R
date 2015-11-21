library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Media Efficiency Ratio (MER)"),
        sidebarPanel(
                numericInput('Profit', 'Profit in dollars', 200000),
               numericInput('Spend', 'Spend in dollars', 100000),
                submitButton('Submit')
             
),      

mainPanel(
        h3('What is Media Efficiency Ratio'),
        h4('When chosing to start a media campaign, whether it be television, radio, digital, or print you want to make sure you are getting a good return on your media spend. An MER of 1.0 is break even. Anything above a 1.0 you are receiving a return on your media spend and therefore the media is having a positive impact on your profits. Type in your expected profit and spend in dollars and this tool will tell you the Media Efficiency Ratio.'),
        h3('Results of prediction'),
        h4('You entered Profit of:'),
        verbatimTextOutput("inputProfit"),
        h4('You entered Media Spend of: '),
        verbatimTextOutput("inputSpend"),
        h4('Your Media Efficiency Ratio based on your inputs is: '),
        verbatimTextOutput('prediction')
        )
))
