damage @s 6 bypass:player_attack_no_kb by @e[type=area_effect_cloud,tag=WATA,limit=1,sort=nearest] from @p[tag=Brucelee]
tag @s add BruceMarked
particle cloud ~ ~1 ~ 1 1 1 0 50 force
particle item{item:"water_bucket"} ~ ~1 ~ 0 0 0 0.2 50 force
playsound minecraft:entity.generic.death neutral @a[distance=..40] ~ ~ ~ 10 0 1
kill @e[type=area_effect_cloud,tag=WATA]
