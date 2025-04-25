## Execute at unlimited void
# stun and trap
execute as @e[type=!#kits:non_entity,distance=..9,tag=!Gojo,tag=!InLabyrinth,tag=!Invincible] at @s run function kits:char/gojo/special/void/hit
execute as @e[type=!#kits:non_entity,distance=9..,tag=GojoUnlimitedVoidTrapped] at @s facing entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=GojoUnlimitedVoid] feet run tp @s ^ ^ ^1