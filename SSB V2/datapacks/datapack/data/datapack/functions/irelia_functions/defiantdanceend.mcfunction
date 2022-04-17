effect clear @s resistance
effect clear @s weakness
effect clear @s slow_falling
kill @e[type=armor_stand,tag=IreliaDefiantDanceStand]
playsound minecraft:entity.ender_dragon.flap neutral @a[distance=..20] ~ ~ ~ 3 2 1
execute positioned ^ ^ ^3 run particle minecraft:dust 1 1 1 2 ~ ~1 ~ 1 0 1 0 200
execute positioned ^ ^ ^3 as @e[tag=!Irelia,tag=!InLabyrinth,distance=..4] at @s run function datapack:damage1
execute positioned ^ ^ ^3 if entity @e[tag=!Irelia,tag=!InLabyrinth,distance=..4] run scoreboard players add @s Timer3 1