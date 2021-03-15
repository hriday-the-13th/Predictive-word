#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
#set working directory

suppressWarnings(library(shiny))
suppressWarnings(library(markdown))

# Predict Next Word application UI defined 

# Navigation Bar - Title, Author, Date
shinyUI(navbarPage("Predictive Text Application",
                   tabPanel("Predict the Next Word",
                            HTML("<strong>Author: HRIDAY PATGIRI </strong>"),
                            br(),
                            HTML("<strong>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: NUPUR PRASAD </strong>"),
                            br(),
                            HTML("<em>Date: 21/02/2020</em>"),
                            br(),
                            img(src = "cu-logo.jpg"),
                            br(),
                            HTML("<strong>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspCOTTON UNIVERSITY</strong>"),
                            
                  #title for left side of page
                            titlePanel("User Interface"),
                  # Sidebar for user to enter part of a sentence 
                            sidebarLayout(
                              sidebarPanel(
                                helpText("This box is for the user to enter the words that will be used in the next word prediction."),
                                textInput("inputString", "Enter part of a sentence here",value = ""),
                                br(),
                                br(),
                                img(src = "Swiftkey.png"),
                                br(),
                                br(),
                                br(),
                                br()
                              ),
                  # Main panel to display the results of the word prediction
                              mainPanel(
                                h2("Next Word Prediction"),
                                verbatimTextOutput("prediction"),
                                strong("Here is what the user entered:"),
                                tags$style(type='text/css', '#text1 {background-color: rgba(150,200,255,0.50); color: black;}'),
                                textOutput('text1'),
                                br(),
                                strong("Here is how the next word was Predicted:"),
                                tags$style(type='text/css', '#text2 {background-color: rgba(0,255,255,0.30); color: black;}'),
                                textOutput('text2'),
                                br(),
                                br(),
                                br(),
                                img(src = "R_Studio.jpg", height = 70, width = 210),
                                helpText("Shiny is a product of R Studio")
                              )
                            )
                            
                   ),
                   tabPanel("About",
                            mainPanel(
                            img(src = "cu-logo.jpg"),
                            br(),
                            HTML("<strong>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspCOTTON UNIVERSITY</strong>"),
                            br(),
                            img(src = "Swiftkey.png"),
                            br(),
                            img(src = "R_Studio.jpg",  height = 70, width = 210),
                            br(),
                            includeMarkdown("about.md")
                            )
                   )
)
)