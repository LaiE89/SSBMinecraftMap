particle electric_spark ~ ~0.9 ~ 0 0 0 0 1 force
particle dust{color:[1.00,0.000,0.000],scale:0.5} ~ ~1 ~ 0 0 0 0 1 force
particle dust{color:[1.00,0.500,0.000],scale:0.5} ~ ~1 ~ 0 0 0 0 1 force
#particle minecraft:flame ~ ~1 ~ 0 0 0 0 1 force
execute positioned ~ ~-1.35 ~ unless entity @p[distance=..2,tag=Doomslayer] positioned ^ ^ ^0.5 positioned ~ ~1.35 ~ run function kits:char/doomslayer/meathook/particles
