tp @s[tag=!facingAKBullet] ~ ~ ~ facing entity @p[tag=Spawn]
tp @s[tag=facingAKBullet] ^ ^ ^-2
tag @s[tag=!facingAKBullet] add facingAKBullet
particle dust{color:[0.000,0.000,0.000],scale:1} ~ ~1 ~ 0 0 0 0 1 force
execute at @s[tag=!AKFinalBullet] as @e[distance=..1.6,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Spawn,tag=!InLabyrinth] at @s run function kits:char/spawn/bulletdamage
execute at @s[tag=AKFinalBullet] as @e[distance=..1.6,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Spawn,tag=!InLabyrinth] at @s run function kits:char/spawn/bulletfinaldamage
