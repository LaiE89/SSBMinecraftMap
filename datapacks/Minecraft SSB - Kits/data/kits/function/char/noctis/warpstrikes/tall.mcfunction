execute at @s positioned ~ ~1 ~ rotated ~ 0 if entity @e[distance=..7,type=!#kits:non_entity,tag=!Invincible,tag=!Noctis,tag=!InLabyrinth] run function kits:char/noctis/generatepoint
execute at @s positioned ~ ~1 ~ rotated ~ 0 if entity @e[distance=..7,type=!#kits:non_entity,tag=!Invincible,tag=!Noctis,tag=!InLabyrinth] run effect give @s slowness 1 2 true
execute at @s positioned ~ ~1 ~ rotated ~ 0 if entity @e[distance=..7,type=!#kits:non_entity,tag=!Invincible,tag=!Noctis,tag=!InLabyrinth] run tag @s add NoctisGreatsword
execute at @s positioned ~ ~1 ~ rotated ~ 0 if entity @e[distance=..7,type=!#kits:non_entity,tag=!Invincible,tag=!Noctis,tag=!InLabyrinth] run schedule function kits:char/noctis/warpstrikes/tallslash 15t append
execute at @s positioned ~ ~1 ~ rotated ~ 0 if entity @e[distance=..7,type=!#kits:non_entity,tag=!Invincible,tag=!Noctis,tag=!InLabyrinth] run schedule function kits:char/noctis/warpstrikes/tallslash2 30t append
execute at @s rotated ~ 0 positioned ~ ~1 ~ if entity @e[distance=..7,type=!#kits:non_entity,tag=!Invincible,tag=!Noctis,tag=!InLabyrinth] run function kits:char/noctis/warpstrikes/tallparticles
execute at @s positioned ~ ~1 ~ as @e[distance=..7,type=!#kits:non_entity,tag=!Invincible,tag=!Noctis,tag=!InLabyrinth] at @s run playsound minecraft:entity.bee.hurt neutral @a[distance=..20] ~ ~ ~ 3 0.65 1
execute at @s positioned ~ ~1 ~ as @e[distance=..7,type=!#kits:non_entity,tag=!Invincible,tag=!Noctis,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @p[tag=Noctis]
