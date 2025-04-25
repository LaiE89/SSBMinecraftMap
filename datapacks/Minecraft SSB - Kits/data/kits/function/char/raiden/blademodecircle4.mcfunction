particle dust{color:[1.000,0.000,0.000],scale:1} ^ ^1.5 ^3 0 0 0 0 1 force
#execute positioned ^ ^1.5 ^3 as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Raiden,tag=!InLabyrinth] at @s run function kits:char/raiden/bladedamage
tp @s ~ ~ ~ ~ ~-5
execute unless entity @s[x_rotation=-90] at @s run function kits:char/raiden/blademodecircle4
