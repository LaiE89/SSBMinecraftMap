scoreboard players set bool chest_menu 0

### expand for new pages ###
execute store success score bool chest_menu run clear @s #datapack:chest_menu{page:0} 0
execute if score bool chest_menu matches 1 run scoreboard players set @s chest_menu 0
execute store success score bool chest_menu run clear @s #datapack:chest_menu{page:1} 0
execute if score bool chest_menu matches 1 run scoreboard players set @s chest_menu 1
execute store success score bool chest_menu run clear @s #datapack:chest_menu{page:2} 0
execute if score bool chest_menu matches 1 run scoreboard players set @s chest_menu 2