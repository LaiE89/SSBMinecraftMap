## When Player Opens the UI
# summon the ui stack
summon item_display ~ ~ ~ {view_range:0f,width:0f,height:0f,teleport_duration:0,Tags:["ui","ui.new"],Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Tags:["ui","ui.new"],CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Passengers:[{id:"minecraft:marker",Tags:["ui","ui.new"]}]}]}

# assign a ui.id that is unique to the player and system.ui stack
scoreboard players add %global system.ui.id 1
scoreboard players operation @s system.ui.id = %global system.ui.id
scoreboard players operation @e[tag=ui.new] system.ui.id = %global system.ui.id

# open initial page
execute as @e[type=chest_minecart,tag=ui.new] run function system:utilities/ui/menu/main_lobby/home/open
execute as @e[type=chest_minecart,tag=ui.new] run function system:utilities/ui/minecart/load_page

tag @e remove system.ui.new