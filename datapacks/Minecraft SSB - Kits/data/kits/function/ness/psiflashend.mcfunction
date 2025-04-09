playsound minecraft:item.totem.use neutral @a[distance=..50] ~ ~ ~ 2 1.5 1
particle explosion ~ ~1 ~ 0 0 0 0 1 force
particle totem_of_undying ~ ~1 ~ 0 0 0 1 100 force
particle flash ~ ~1 ~ 0 0 0 0 10 force
execute as @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Ness,tag=!InLabyrinth] at @s run function kits:ness/psiflashenddamage

effect clear @p[tag=NessPKFlash] minecraft:slowness
effect clear @p[tag=NessPKFlash] minecraft:weakness
tag @p[tag=NessPKFlash] remove NessPKFlash
kill @e[type=area_effect_cloud,tag=PKFlashPlace]
kill @s
