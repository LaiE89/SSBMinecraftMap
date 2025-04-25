execute as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Brucelee,tag=!InLabyrinth] at @s run function kits:char/brucelee/watadamage
tp @s ^ ^ ^2
particle dust{color:[0.000,0.753,1.000],scale:0.5} ~ ~1 ~ 0.05 0.05 0.05 0.05 50 force
particle dripping_water ~ ~1 ~ 0 0 0 0 1 force
