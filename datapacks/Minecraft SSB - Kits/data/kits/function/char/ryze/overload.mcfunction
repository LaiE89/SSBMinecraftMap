tp @s ^ ^ ^1.5
execute as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Ryze,tag=!InLabyrinth] at @s run function kits:char/ryze/overloaddamage
particle dust{color:[0.000,0.502,1.000],scale:0.5} ~ ~1 ~ 0.2 0.2 0.2 0.05 200 force
