playsound minecraft:ambient.underwater.exit neutral @a[distance=..15] ~ ~ ~ 10 1 1
execute as @e[tag=!Tanjiro,distance=..6,tag=!InLabyrinth] at @s run function datapack:damage1
particle minecraft:dust 0 2 1 1 ~ ~1 ~ 3 0 3 0 300
particle minecraft:splash ~ ~1 ~ 3 0 3 0 300
scoreboard players set @s Ability3CD 0