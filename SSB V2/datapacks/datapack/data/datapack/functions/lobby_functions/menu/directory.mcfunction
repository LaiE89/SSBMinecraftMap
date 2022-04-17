function datapack:lobby_functions/menu/get_page
function datapack:lobby_functions/menu/get_selection

scoreboard players set bool chest_menu 0
### expand for new pages ###
execute if score bool chest_menu matches 0 if score @s chest_menu matches 0 run function datapack:lobby_functions/menu/page0/directory
execute if score bool chest_menu matches 0 if score @s chest_menu matches 1 run function datapack:lobby_functions/menu/page1/directory
execute if score bool chest_menu matches 0 if score @s chest_menu matches 2 run function datapack:lobby_functions/menu/page2/directory
#############################

function datapack:lobby_functions/menu/update

clear @s #datapack:chest_menu{isMenu:1b}