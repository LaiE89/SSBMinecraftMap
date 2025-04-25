execute as @e[tag=DragonbornMarked] at @s run damage @s 2 bypass:player_attack_no_kb
execute as @e[tag=DragonbornMarked] at @s run particle item{item:"chorus_fruit"} ~ ~1 ~ 0 0 0 0.25 25 force
execute as @e[tag=DragonbornMarked] at @s run playsound minecraft:block.soul_sand.break neutral @a[distance=..20] ~ ~ ~ 10 0.75 1
