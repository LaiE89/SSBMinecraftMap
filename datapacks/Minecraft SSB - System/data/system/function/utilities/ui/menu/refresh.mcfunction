## Refreshes ui
# set the current page to the mask (specific UI);
# if no mask exists, "current" remains unchanged
data modify storage system.ui mask set from storage system.ui current
execute on passengers run function system:utilities/ui/menu/get_mask with entity @s data.page
data modify storage system.ui current set from storage system.ui mask

# load page
function system:utilities/ui/minecart/load_page