# =============== Execute at Ice Bomb armor stand ===============
# Particles
particle dust{color:[0.000,1.000,1.000],scale:0.5} ~ ~0.2 ~ 0.1 0.1 0.1 0 20 force

# Duration until Ice Bomb armor stand explodes automatically
execute unless block ~ ~-0.36 ~ #kits:passable run function kits:char/doomslayer/ice_bomb/passive3
execute at @s if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Doomslayer,tag=!InLabyrinth] run function kits:char/doomslayer/ice_bomb/passive3
