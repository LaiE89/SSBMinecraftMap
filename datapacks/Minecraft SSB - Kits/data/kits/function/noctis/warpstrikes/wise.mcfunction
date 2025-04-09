execute at @s positioned ~ ~1 ~ rotated ~ 0 if entity @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Noctis,tag=!InLabyrinth] run function kits:noctis/generatepoint
execute at @s rotated ~ 0 positioned ~ ~1 ~ if entity @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Noctis,tag=!InLabyrinth] run function kits:noctis/warpstrikes/wiseparticles
execute at @s positioned ~ ~1 ~ as @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Noctis,tag=!InLabyrinth] at @s run damage @s 8 bypass:player_attack by @p[tag=Noctis]
