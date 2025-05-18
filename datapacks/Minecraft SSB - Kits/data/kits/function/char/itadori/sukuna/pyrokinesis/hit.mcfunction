# Execute at Enemies Hit by Pyrokinesis
damage @s 6 minecraft:player_attack by @e[type=area_effect_cloud,tag=ItadoriPyrokinesis,limit=1,sort=nearest] from @p[tag=Sukuna]
scoreboard players set @p[tag=Sukuna] kits.timer 0
particle flame ~ ~1 ~ 0 0 0 0.5 5 force
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 1 0 1
playsound entity.player.hurt_on_fire neutral @a[distance=..20] ~ ~ ~ 1 0 1
