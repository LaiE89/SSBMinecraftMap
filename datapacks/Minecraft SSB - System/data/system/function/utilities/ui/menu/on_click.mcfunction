## When a click is detected in the ui
# each UI element has the tag ui_item:{cmd:"function"}
# executes a function based on the selected item's tag
function system:utilities/ui/run_cmd with storage system.ui in[0].components."minecraft:custom_data".ui_item

# load page
function system:utilities/ui/minecart/load_page

# sfx
playsound minecraft:block.stone_button.click_off neutral @p ~ ~ ~ 1 2 1