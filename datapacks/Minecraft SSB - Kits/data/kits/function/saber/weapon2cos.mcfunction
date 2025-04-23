effect give @s minecraft:regeneration 5 2 true
particle soul_fire_flame ~ ~1 ~ 0 0 0 0.1 100 force
particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 force
playsound minecraft:block.amethyst_block.break neutral @a[distance=..30] ~ ~ ~ 3 0 1
scoreboard players set @s kits.ability3CD 0
