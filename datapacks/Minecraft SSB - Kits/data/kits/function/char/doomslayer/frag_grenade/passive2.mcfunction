# =============== Execute at Frag Grenade armor stand ===============
particle dust{color:[1.000,0.500,0.000],scale:0.5} ~ ~0.2 ~ 0.1 0.1 0.1 0 20 force

execute unless block ~ ~-0.36 ~ #kits:passable run function kits:char/doomslayer/frag_grenade/passive3
execute at @s if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Doomslayer,tag=!InLabyrinth] run function kits:char/doomslayer/frag_grenade/passive3
