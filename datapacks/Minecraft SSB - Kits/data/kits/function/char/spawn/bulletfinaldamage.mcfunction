playsound minecraft:entity.generic.explode neutral @a[distance=..40] ~ ~ ~ 1 2 1
damage @s 3 bypass:player_attack_no_kb by @p[tag=Spawn]
particle lava ~ ~1.5 ~ 0 0 0 0 5 force
kill @e[type=area_effect_cloud,tag=AKBullet,sort=nearest,limit=1]
