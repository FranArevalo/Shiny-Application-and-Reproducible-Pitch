#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

## app.R ##
## app.R ##

library(shinydashboard)

ui <- dashboardPage(skin="red",
      dashboardHeader(title = "Shiny Application",
                                    
                                    
      dropdownMenu(type = "messages",
          messageItem(
              from = "Sales Dept",
              message = "Sales are steady this month."
              ),
          messageItem(
              from = "Support",
              message = "The new server is ready.",
              icon = icon("life-ring"),
              time = "2017-10-23"
              )
              )),
                    
                    
      dashboardSidebar(
        sidebarMenu(
          menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")
                  )
                   )
                      ),
                    
      dashboardBody(
        tags$head(tags$style(HTML('
                                   .main-header .logo {
                                    font-family: "Georgia", Times, "Calibri", serif;
                                    font-weight: bold;
                                    font-size: 18px;
                                                      }
                                  ')))
                      ,

        tabItems(
        # First tab content
          tabItem(tabName = "dashboard",
                  fluidRow(
                      box(
                          title = "Histogram", status = "primary", background = "blue", solidHeader = TRUE,
                          collapsible = TRUE,
                          plotOutput("plot1", height = 195)
                          ),
                                  
                      box(
                          title = "Inputs", status = "warning", background = "black",solidHeader = TRUE,
                          br(), 
                          sliderInput("slider", "Number of Data", 1, 100, 50),
                          textInput("text", "Text input:")
                          )
                          ) 
                        )
                      )
                      )
                      )