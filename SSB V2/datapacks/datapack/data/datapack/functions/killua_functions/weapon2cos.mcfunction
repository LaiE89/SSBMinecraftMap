scoreboard players set @s Timer3 1
tag @s add KilluaGodspeed
effect give @s minecraft:resistance 1 9 true
effect give @s minecraft:speed 15 4 true
particle minecraft:flash ~ ~ ~ 0 0 0 0 20
playsound minecraft:entity.generic.explode neutral @a[distance=..30]
scoreboard players set @s Timer4 0