particle glow_squid_ink ~ ~1 ~ 0.5 0.5 0.5 0 25 force
particle spit ~ ~1 ~ 0.5 0.5 0.5 0.1 100 force
execute as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!InLabyrinth,tag=!Dragonborn,tag=!DragonbornForceDamage] at @s run function kits:char/dragonborn/forcedamage

execute store result score @s kits.timer run data get entity @s Age
execute if score @s kits.timer matches 29.. run tag @e[tag=DragonbornForceDamage] remove DragonbornForceDamage
tp @s ^ ^ ^1.25
