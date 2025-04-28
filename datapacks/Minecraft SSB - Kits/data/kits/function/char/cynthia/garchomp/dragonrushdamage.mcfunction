playsound minecraft:entity.zombie.break_wooden_door neutral @a[distance=..30] ~ ~ ~ 10 0.65 1
particle explosion ~ ~1 ~ 0 0 0 0 1 force
particle soul_fire_flame ~ ~1 ~ 0 0 0 1 100 force
particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force
damage @s 6 bypass:player_attack by @p[tag=Cynthia]
tag @s add GarchompRushKB
execute as @p[tag=Cynthia] at @s run scoreboard players set @s kits.raycastTick 0
execute as @p[tag=Cynthia] at @s rotated ~ 0 run function kits:char/cynthia/garchomp/dragonrushkb
tag @s remove GarchompRushKB
execute as @p[tag=Cynthia] at @s run function kits:char/cynthia/garchomp/dragonrushend
