execute at @s run scoreboard players set @s kits.raycastTick 0
execute at @s run function kits:char/doomfist/doomfistpassive4
effect clear @s slowness
playsound minecraft:entity.ender_dragon.flap neutral @a[distance=..30] ~ ~ ~ 10 0 1
effect give @s minecraft:levitation 4 0 true
