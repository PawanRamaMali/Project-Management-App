##  Tab Build New Test Case ----

tabPanel("Board",
         value = "Board",
         fluidPage
         (
           fluidRow(
           
             shinyjqui::jqui_draggable(
               textInput("bar", "Input")
               ),
             
             div(
             jqui_droppable('#foo', options = list(
               accept = '#bar', # jQuery selector to define which draggable element to monitor. Accept anything if not set.
               classes = list(
                 `ui-droppable-active` = 'ui-state-focus', # change class when draggable element is dragging
                 `ui-droppable-hover` = 'ui-state-highlight' # change class when draggable element is dragging over
               ),
               drop = JS(
                 'function(event, ui){$(this).addClass("ui-state-active");}'
               ) # a javascrip callback to change class when draggable element is dropped in
             )),
             style= "border:2px;
                    border-color: black;
                    border-style: solid;")
           
           
         )
           
           ))