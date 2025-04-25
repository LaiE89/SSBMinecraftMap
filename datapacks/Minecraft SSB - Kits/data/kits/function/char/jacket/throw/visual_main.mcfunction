## Execute at Throw Visual Armor Stand
# Positioning and rotation
tp @s ~ ~ ~ ~40 ~
data modify entity @s Pos set from entity @e[limit=1,sort=nearest,tag=JacketThrowItemTasks,type=area_effect_cloud] Pos
