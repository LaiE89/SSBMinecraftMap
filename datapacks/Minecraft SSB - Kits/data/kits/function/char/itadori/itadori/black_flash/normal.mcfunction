# When force Black Flash is Used
execute as @e[distance=..6,limit=1,sort=nearest,nbt={HurtTime:10s},tag=!Itadori,tag=!InLabyrinth,tag=!Invincible,type=!#kits:non_entity] at @s run damage @s 4 bypass:player_attack by @p[tag=Itadori]
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 0.5 1 0.5
