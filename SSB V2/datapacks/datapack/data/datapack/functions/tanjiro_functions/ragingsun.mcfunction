playsound minecraft:entity.ghast.shoot neutral @a[distance=..20] ~ ~ ~ 10 0 1
execute as @e[tag=!Tanjiro,distance=..8,tag=!InLabyrinth] at @s run function datapack:damage1
effect give @e[tag=!Tanjiro,distance=..8,tag=!InLabyrinth] minecraft:wither 2 9 true
particle minecraft:dust 1 0.5 0 1 ~ ~1 ~ 4 0 4 0 300
particle minecraft:flame ~ ~1 ~ 4 0 4 0 300
scoreboard players set @s Ability3CD 1