data remove entity @e[type=minecraft:chest_minecart,tag=lobbymenu,limit=1,sort=nearest] Items

### expand for new pages ###
execute if score @s chest_menu matches 0 run function datapack:lobby_functions/menu/page0/items
execute if score @s chest_menu matches 1 run function datapack:lobby_functions/menu/page1/items
execute if score @s chest_menu matches 2 run function datapack:lobby_functions/menu/page2/items
#############################

advancement revoke @s only datapack:open_menu