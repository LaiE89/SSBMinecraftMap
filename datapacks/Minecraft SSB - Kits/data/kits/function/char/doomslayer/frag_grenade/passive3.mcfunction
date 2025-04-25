# What happens when Frag Grenade armor stand explodes
execute as @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Doomslayer,tag=!InLabyrinth] at @s run function kits:char/doomslayer/frag_grenade/passive4
particle explosion ~ ~0.5 ~ 0 0 0 0 1 force
particle flash ~ ~0.5 ~ 0 0 0 0 5 force
playsound minecraft:entity.firework_rocket.twinkle neutral @a[distance=..30] ~ ~ ~ 2 1 1
playsound minecraft:entity.generic.explode neutral @a[distance=..30] ~ ~ ~ 2 1 1
kill @s
