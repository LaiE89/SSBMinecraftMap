scoreboard players set bool chest_menu 1

execute if score selection chest_menu matches 0 run say ERROR

execute if score selection chest_menu matches 4 run scoreboard players set @s chest_menu 0