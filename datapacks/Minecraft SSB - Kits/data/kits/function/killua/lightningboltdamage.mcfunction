damage @s 12 bypass:player_attack by @e[type=area_effect_cloud,tag=KilluaThunder,limit=1,sort=nearest]
playsound minecraft:entity.generic.explode neutral @a[distance=..50] ~ ~ ~ 3 1 1
playsound minecraft:entity.lightning_bolt.thunder neutral @a[distance=..50] ~ ~ ~
particle explosion ~ ~1 ~ 0 0 0 0 1 force
kill @e[type=area_effect_cloud,tag=KilluaThunder]
