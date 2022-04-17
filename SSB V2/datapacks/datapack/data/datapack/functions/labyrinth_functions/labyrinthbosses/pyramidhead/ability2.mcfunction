particle minecraft:block minecraft:nether_bricks ~ ~0.5 ~ 3 0 3 0 200
playsound minecraft:entity.wither.break_block neutral @a[distance=..15] ~ ~ ~ 3 0 1
execute as @a[distance=..15] at @s run function datapack:labyrinth_functions/labyrinthbosses/pyramidhead/pyramidheadgettingkb
scoreboard players reset @s Timer2