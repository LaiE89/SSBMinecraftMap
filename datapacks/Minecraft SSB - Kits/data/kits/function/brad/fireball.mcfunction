damage @s 9 bypass:player_attack by @e[type=area_effect_cloud,tag=BradsFireball,limit=1,sort=nearest] from @p[tag=Brad]
playsound minecraft:entity.generic.explode neutral @a[distance=..50] ~ ~ ~ 3 1 1
particle explosion ~ ~1 ~ 0 0 0 0 1 force
kill @e[type=area_effect_cloud,tag=BradsFireball]
