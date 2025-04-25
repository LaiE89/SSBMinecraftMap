execute at @s facing entity @e[type=area_effect_cloud,tag=2bgravity,sort=nearest,limit=1] feet run teleport @s ^ ^1 ^1.5
particle minecraft:dust{color:[0.910,0.682,0.318],scale:0.5} ~ ~ ~ 0.2 0.2 0.2 0 100

execute as @e[distance=..2,type=area_effect_cloud,tag=2bgravity] at @s run function kits:char/2b/gravityactivated
