execute as @p[tag=Noctis] at @s rotated ~ 0 positioned ~ ~1 ~ run function kits:char/noctis/warpstrikes/tallparticles
execute at @p[tag=Noctis] positioned ~ ~1 ~ as @e[distance=..7,type=!#kits:non_entity,tag=!Invincible,tag=!Noctis,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @p[tag=Noctis]
execute at @p[tag=Noctis] positioned ~ ~1 ~ run playsound minecraft:entity.bee.hurt neutral @a[distance=..20] ~ ~ ~ 3 0.65 1
