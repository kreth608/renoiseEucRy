-- Euclidean Rhythms tool

renoise.tool():add_menu_entry { 
  name = "Pattern Editor:Euclidean Rhythms...",
  invoke = function()
    show_dialog()
  end
}

function show_dialog()

    local total_length_slider_value = 0x7f
    local pulse_length_slider_value = 0x7f
    local 


    local vb = renoise.ViewBuilder()
    local dialog_title = "Euclidean Rhythms"
    local DEFAULT_MARGIN = renoise.ViewBuilder.DEFAULT_CONTROL_MARGIN
    local dialog_content = vb:column {
      margin = DEFAULT_MARGIN,
      
      spacing = 5,
      vb:text {
        text = "Total Length",
        font = "bold"
      },
      vb:slider {
        value = total_length_slider_value,
        notifier = function(slider_value)
          total_length_slider_value = slider_value
        end,
        min = 0,
        max = 0x7f
      },
      vb:button {
        text = "Close",
        width = "50%",
        height = "30%",
        --notifier = function()
        --  dialog:close()
        --end,
      }
    }
    local dialog_buttons = {"OK"}
    
  -- print it 
  renoise.app():show_custom_prompt(
  dialog_title, dialog_content, dialog_buttons)
end