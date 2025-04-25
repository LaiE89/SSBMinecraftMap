particle glow_squid_ink ~ ~0.5 ~ 0 0 0 0 1 force
execute unless block ~ ~-0.36 ~ #kits:passable run function kits:char/cynthia/roserade/leechseedbreak
execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Cynthia,tag=!InLabyrinth,limit=1,sort=nearest] at @s run function kits:char/cynthia/roserade/leechseeding
