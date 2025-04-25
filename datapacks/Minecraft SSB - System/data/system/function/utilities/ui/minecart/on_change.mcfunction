### When the ui detects a change
## remove ui element items from players
clear @a *[minecraft:custom_data~{ui_item:{}}]

## detects when a player clicks specific items
# copy previous items into temp and mark them with {prev:1b}
data modify storage system.ui temp set from storage system.ui previous
data modify storage system.ui temp[].components."minecraft:custom_data" merge value {prev:1b}
# insert {prev:1b} items into the minecart without overwriting existing ones
# therefore, items taken by the player are immediately replaced with identical copies tagged {prev:1b},
# while untouched items remain unchanged
data modify entity @s Items insert 0 from storage system.ui temp[]
# store all items tagged {prev:1b} from the minecart
data remove storage system.ui temp
data modify storage system.ui temp append from entity @s Items[{components:{"minecraft:custom_data":{prev:1b}}}]
# store only {prev:1b} items that contain a UI element
data remove storage system.ui in
data modify storage system.ui in append from storage system.ui temp[{components:{"minecraft:custom_data":{ui_item:{}}}}]
# filter out items tagged as empty
execute if data storage system.ui in[0].components."minecraft:custom_data".ui_item.empty run data remove storage system.ui in[0]
# trigger click action if only one item is selected  
execute if data storage system.ui in[0] unless data storage system.ui in[1] run return run function system:utilities/ui/menu/on_click

## update page and history if nothing happened
function system:utilities/ui/menu/refresh