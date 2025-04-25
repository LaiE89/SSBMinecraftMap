tp @s ^ ^ ^-1.25
particle dust{color:[1.000,1.000,1.000],scale:0.3} ~ ~1 ~ 0 0 0 0 10 force
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Doomfist,tag=!InLabyrinth] run function kits:char/doomfist/handcannondamage