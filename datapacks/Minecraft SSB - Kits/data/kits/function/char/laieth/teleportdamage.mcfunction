damage @s 6 bypass:player_attack by @e[type=area_effect_cloud,tag=LaiethBolt,limit=1,sort=nearest] from @p[tag=Laieth]
particle explosion ~ ~1 ~ 0 0 0 0 1 force
playsound minecraft:entity.warden.attack_impact neutral @a[distance=..30] ~ ~ ~ 10 1 1
kill @e[type=area_effect_cloud,tag=LaiethBolt]
