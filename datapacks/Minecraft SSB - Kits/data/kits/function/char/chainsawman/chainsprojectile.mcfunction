execute as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Denji,tag=!InLabyrinth] at @s run function kits:char/chainsawman/chains
execute if entity @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Denji,tag=!InLabyrinth] run kill @s
particle dust{color:[0.502,0.502,0.502],scale:1} ~ ~1.2 ~ 0.05 0.05 0.05 0 50 force

tp @s ^ ^ ^2
