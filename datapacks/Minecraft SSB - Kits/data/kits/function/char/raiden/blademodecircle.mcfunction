particle dust{color:[1.000,0.000,0.000],scale:1} ^ ^1.5 ^3 0 0 0 0 1 force
#execute positioned ^ ^1.5 ^3 as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Raiden,tag=!InLabyrinth] at @s run function kits:char/raiden/bladedamage
tp @s ~ ~ ~ ~-5 ~
scoreboard players set @s kits.timer3 5
scoreboard players operation @s kits.timer4 += @s kits.timer3
execute if score @s kits.timer4 < @s kits.timer at @s run function kits:char/raiden/blademodecircle
