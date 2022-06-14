execute store result score items Lobby_Menu run clear @s #datapack:chest_menu{isMenu:1b} 0
execute if score items Lobby_Menu matches 1.. run playsound minecraft:ui.button.click neutral @s
execute if score items Lobby_Menu matches 1.. run function datapack:lobby_functions/menu/directory