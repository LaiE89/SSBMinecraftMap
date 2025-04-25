#particle minecraft:flash ~ ~-0.75 ~ 0 0 0 0 10
#particle minecraft:wax_on ^ ^-0.3 ^1 0 0 0 0 5
#particle minecraft:witch ^ ^-0.3 ^4 0 0 0 0 5
#particle minecraft:squid_ink ^ ^-0.3 ^4 0 0 0 0 0
#tp @s ~ ~ ~ ~50 ~50
execute store result score @s kits.timer run data get entity @s Age
execute store result score @s kits.timer2 run scoreboard players operation @s kits.timer %= @p[tag=2B] kits.timer3
execute if score @s kits.timer2 matches 0 run function kits:char/2b/gravitydraw
tag @e[distance=..4.5,type=!#kits:non_entity,tag=!Invincible,tag=!2B,tag=!InLabyrinth,tag=!2BinGravity] add 2BinGravity
execute as @s[scores={kits.timer=3..}] run tp @e[tag=2BinGravity] ~ ~ ~
