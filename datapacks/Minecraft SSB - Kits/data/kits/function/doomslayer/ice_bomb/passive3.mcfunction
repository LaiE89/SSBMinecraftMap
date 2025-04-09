# What happens when Ice Bomb armor stand collides with entity or block
execute as @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Doomslayer,tag=!InLabyrinth] at @s run function kits:doomslayer/ice_bomb/passive4
particle item{item:"cyan_stained_glass"} ~ ~0.2 ~ 0 0 0 0.5 100 force
particle flash ~ ~0.5 ~ 0 0 0 0 1 force
playsound minecraft:block.conduit.deactivate neutral @a[distance=..30] ~ ~ ~ 2 2 1
playsound minecraft:block.glass.break neutral @a[distance=..30] ~ ~ ~ 2 0 1
playsound minecraft:entity.generic.explode neutral @a[distance=..30] ~ ~ ~ 2 2 1
kill @s
