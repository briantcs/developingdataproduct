data<-read.csv('bankdata.csv')

shinyUI(pageWithSidebar(
  headerPanel('Clustering Age/Income/Number Of Children'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(data)),
    selectInput('ycol', 'Y Variable', names(data),
                selected=names(data)[[2]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9),
    
    h5("Data Reference:"),
    tags$a("WEKA", 
           href="http://facweb.cs.depaul.edu/mobasher/classes/ect584/WEKA/k-means.html")
  ),
  mainPanel(
    plotOutput('plot1')
  )
))



