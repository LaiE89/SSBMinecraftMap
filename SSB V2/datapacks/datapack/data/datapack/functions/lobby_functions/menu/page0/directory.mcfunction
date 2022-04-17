scoreboard players set bool chest_menu 1

execute if score selection chest_menu matches 0 run say ERROR

execute if score selection chest_menu matches 1 run scoreboard players set @s chest_menu 1
execute if score selection chest_menu matches 2 run scoreboard players set @s chest_menu 2
execute if score selection chest_menu matches 3 run function datapack:lobby_functions/menu/page0/directory