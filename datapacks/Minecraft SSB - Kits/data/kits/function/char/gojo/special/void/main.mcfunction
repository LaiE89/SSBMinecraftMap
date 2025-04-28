## Execute at unlimited void
scoreboard players add @s kits.timer 1

# stun and trap
execute as @e[type=!#kits:non_entity,distance=..9,tag=!Gojo,tag=!InLabyrinth,tag=!Invincible] at @s run function kits:char/gojo/special/void/hit
execute as @e[type=!#kits:non_entity,distance=9..,tag=GojoUnlimitedVoidTrapped] at @s facing entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=GojoUnlimitedVoid] feet if block ^ ^ ^1 #kits:passable run tp @s ^ ^ ^1

execute if score @s kits.timer matches 100 as @e[type=!#kits:non_entity,tag=GojoUnlimitedVoidTrapped] at @s run attribute @s minecraft:gravity modifier remove gravity.domainexpansion.gojo
execute if score @s kits.timer matches 100 run tag @e[type=!#kits:non_entity,tag=GojoUnlimitedVoidTrapped] remove GojoUnlimitedVoidTrapped
