execute store result score items chest_menu run clear @s #datapack:chest_menu{isMenu:1b} 0
execute if score items chest_menu matches 1.. run playsound minecraft:ui.button.click neutral @s
execute if score items chest_menu matches 1.. run function datapack:lobby_functions/menu/directory