data remove entity @e[type=minecraft:chest_minecart,tag=lobbymenu,limit=1,sort=nearest] Items
kill @e[type=minecraft:chest_minecart,tag=lobbymenu,limit=1,sort=nearest]
kill @e[type=minecraft:armor_stand,tag=MenuMove,limit=1,sort=nearest]
#execute as @e[type=minecraft:chest_minecart,tag=lobbymenu,limit=1,sort=nearest] at @s run tp @s ~ ~-5 ~
#execute at @s positioned ~ ~-5 ~ run kill @e[type=minecraft:chest_minecart,tag=lobbymenu,limit=1,sort=nearest]
#execute at @s positioned ~ ~-5 ~ run kill @e[type=item,distance=..2]

tag @s remove InMenu