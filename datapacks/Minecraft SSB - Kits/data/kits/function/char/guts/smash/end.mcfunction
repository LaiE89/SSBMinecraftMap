execute at @s run playsound minecraft:item.mace.smash_ground_heavy neutral @a[distance=..30] ~ ~ ~ 2 2 1
execute at @s run playsound minecraft:block.gravel.fall neutral @a[distance=..15] ~ ~ ~ 3 0.9 1
execute at @p[tag=Guts] run particle block{block_state:"minecraft:sand"} ~ ~0.2 ~ 3 0 3 0 100 force
kill @s
tag @e[tag=GutsDragonslayerSmashed] remove GutsDragonslayerSmashed
attribute @p[tag=Guts] minecraft:attack_speed modifier remove attackspeed.smash.guts