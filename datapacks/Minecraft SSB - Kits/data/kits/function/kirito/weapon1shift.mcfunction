playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 10 2 1
particle block{block_state:"minecraft:dirt"} ~ ~0.25 ~ 2 0 2 1 50 force
execute at @s rotated ~-45 ~ positioned ~ ~1.25 ~ positioned ^-1 ^ ^1.5 run function kits:kirito/sliceparticles2
execute positioned ^ ^1.25 ^2.5 run execute as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Kirito,tag=!InLabyrinth] at @s run damage @s 3 bypass:player_attack by @p[tag=Kirito]
schedule function kits:kirito/stabstart 7t append
scoreboard players set @s kits.ability2CD 0
