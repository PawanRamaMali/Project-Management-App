##  Tab Build New Test Case ----

tabPanel("Board",
         value = "Board",
         fluidPage
         (
           fluidRow(verbatimTextOutput('position')),
           
           
           fluidRow(
             column(
               width = 3,
               
               jqui_draggable(
                 div(id = 'drg_div1',
                     'Div',
                     textInput('drg_input', ''),
                     selectInput('drg_sel', 'Priority', choices = c("High","Medium","Low")),
                     textAreaInput('drg_textarea', 'Textarea'),
                     
                     style = 'background-color:#79BBF2;
                     border: 1px dashed;
                     border-radius: 10px;margin:5px;')
               ),
               jqui_draggable(
                 div(id = 'drg_div2',
                     'Div',
                     textInput('drg_input', ''),
                     selectInput('drg_sel', 'Priority', choices = c("High","Medium","Low")),
                     textAreaInput('drg_textarea', 'Textarea'),
                     
                     style = 'background-color:#79BBF2;
                     border: 1px dashed;
                     border-radius: 10px;margin:5px;')
               )
               
               # jqui_draggable(
               #   div('No id Div', style = 'width:100px; height:100px; background-color:#79BBF2')
               # ),
               # 
               # jqui_draggable(),
               # jqui_draggable(),
               # 
               # 
               # jqui_draggable()
               
             ),
             column(3,
             jqui_droppable(
               div(
               
                 style = 'height: 800px; z-index: -10; border: 1px dashed; border-radius: 10px;margin:5px;',
                 id = 'drop_area1',
                 'To Do Task List'
               ),
               options = list(
                 drop = JS(
                   'function(event, ui){',
                   '  var info = "A " + shinyjqui.getId(ui.draggable) + " is dropped.";',
                   '  $(this).addClass("ui-state-highlight").html(info);',
                   '  setTimeout(function(){',
                   '    $(event.target).removeClass("ui-state-highlight").html("Try to drop something here!");',
                   '  }, 1500);',
                   '}'
                 )
               )
             )),
             
             column(3,
             jqui_droppable(
               div(
                
                 style = 'height: 800px; z-index: -10; border: 1px dashed; border-radius: 10px;margin:5px;',
                 id = 'drop_area2',
                 'In Progress'
               ),
               options = list(
                 drop = JS(
                   'function(event, ui){',
                   '  var info = "A " + shinyjqui.getId(ui.draggable) + " is dropped.";',
                   '  $(this).addClass("ui-state-highlight").html(info);',
                   '  setTimeout(function(){',
                   '    $(event.target).removeClass("ui-state-highlight").html("Try to drop something here!");',
                   '  }, 1500);',
                   '}'
                 )
               )
             )),
             column(3,
             jqui_droppable(
               div(
                 
                 style = 'height: 800px; z-index: -10; border: 1px dashed; border-radius: 10px;margin:5px;',
                 id = 'drop_area3',
                 'Completed'
               ),
               options = list(
                 drop = JS(
                   'function(event, ui){',
                   '  var info = "A " + shinyjqui.getId(ui.draggable) + " is dropped.";',
                   '  $(this).addClass("ui-state-highlight").html(info);',
                   '  setTimeout(function(){',
                   '    $(event.target).removeClass("ui-state-highlight").html("Try to drop something here!");',
                   '  }, 1500);',
                   '}'
                 )
               )
             ))
           )
           
           #   fluidRow(
           #   column(3,
           #          jqui_draggable(
           #            div(id = 'drg_div1',
           #                'Div',
           #                textInput('drg_input', 'Input'),
           #
           #                style = 'width:100px; height:100px; background-color:#79BBF2')
           #          ),
           #          jqui_draggable(
           #            div(id = 'drg_div2',
           #                'Div',
           #                textInput('drg_input', 'Input'),
           #                style = 'width:100px; height:100px; background-color:#79BBF2')
           #          )),
           #
           #   column(3,
           #          jqui_droppable(
           #            column(
           #              width = 12,
           #              style = 'height: 800px; z-index: -10; border: 1px dashed; border-radius: 10px;',
           #              id = 'drop_area',
           #              'Try to drop something here!'
           #            ),
           #            options = list(
           #              drop = JS(
           #                'function(event, ui){',
           #                '  var info = "A " + shinyjqui.getId(ui.draggable) + " is dropped.";',
           #                '  $(this).addClass("ui-state-highlight").html(info);',
           #                '  setTimeout(function(){',
           #                '    $(event.target).removeClass("ui-state-highlight").html("Try to drop something here!");',
           #                '  }, 1500);',
           #                '}'
           #              )
           #            )
           #          ))
           #
           # )
           
           
         ))