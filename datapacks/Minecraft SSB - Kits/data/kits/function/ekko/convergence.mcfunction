effect give @s minecraft:absorption 2 2 true
playsound minecraft:item.shield.break neutral @a[distance=..50] ~ ~ ~ 5 0 1
execute at @e[type=area_effect_cloud,tag=convergence] as @e[distance=..7,type=!#kits:non_entity,tag=!Invincible,tag=!Ekko,tag=!InLabyrinth] at @s run function kits:ekko/convergenceeffects
execute at @e[type=area_effect_cloud,tag=convergence] run particle end_rod ~ ~1 ~ 0 0 0 1 500 force
kill @e[type=area_effect_cloud,tag=convergence]
