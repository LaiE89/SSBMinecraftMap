particle minecraft:dust 0 0 0 1 ~ ~ ~ 0 0 0 0 5
playsound minecraft:entity.player.breath neutral @a[distance=..10] ~ ~ ~ 1 0 1
execute if entity @a[distance=..2] run execute as @a[distance=..2] at @s run particle block redstone_block ~ ~1 ~ 0 0 0 0 10
execute if entity @a[distance=..2] run execute as @a[distance=..2] at @s run playsound minecraft:entity.ender_dragon.flap neutral @a[distance=..10] ~ ~ ~ 2 0 1
execute if entity @a[distance=..2] run execute as @a[distance=..2] at @s run effect give @s minecraft:wither 1 9
execute if entity @a[distance=..2] run execute as @a[distance=..2] at @s run effect give @s minecraft:slowness 1 0
execute positioned ^ ^ ^1 if block ~ ~ ~ air unless entity @e[distance=..0.75] run function datapack:labyrinth_functions/labyrinthmobabilities/labyrinthprisonnightmareraycast