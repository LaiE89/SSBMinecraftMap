particle flash ~ ~0.5 ~ 0 0 0 0 10 force
execute as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Cynthia,tag=!InLabyrinth] at @s run damage @s 9 bypass:player_attack by @e[type=area_effect_cloud,tag=LucarioAuraSphere,tag=!LucarioAuraSphereCharge,limit=1,sort=nearest] from @p[tag=Lucario]
playsound minecraft:entity.generic.explode neutral @a[distance=..30] ~ ~ ~ 2 1.25 1
kill @s
