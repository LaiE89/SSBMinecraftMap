## When player opens the ui
# summon the ui stack
summon item_display ~ ~ ~ {view_range:0f,width:0f,height:0f,teleport_duration:0,Tags:["system.ui","system.ui.new"],Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Tags:["system.ui","system.ui.new"],CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},DisplayOffset:-100,Passengers:[{id:"minecraft:marker",Tags:["system.ui","system.ui.new"]}]}]}

# assign a ui.id that is unique to the player and ui stack
scoreboard players add %global system.ui.id 1
scoreboard players operation @s system.ui.id = %global system.ui.id
scoreboard players operation @e[tag=system.ui.new] system.ui.id = %global system.ui.id

# open initial page
execute as @e[type=chest_minecart,tag=system.ui.new] run function system:utilities/ui/menu/main_lobby/home/open
execute as @e[type=chest_minecart,tag=system.ui.new] run function system:utilities/ui/minecart/load_page

tag @e remove system.ui.new