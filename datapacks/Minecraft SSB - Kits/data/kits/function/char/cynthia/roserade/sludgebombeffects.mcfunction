particle dust{color:[0.502,0.000,0.502],scale:1} ~ ~0.5 ~ 0.3 0.3 0.3 0.25 25 force
execute unless block ~ ~-0.36 ~ #kits:passable run function kits:char/cynthia/roserade/sludgebombexplode
#execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Cynthia,tag=!InLabyrinth] run function kits:char/cynthia/roserade/sludgebombexplode
