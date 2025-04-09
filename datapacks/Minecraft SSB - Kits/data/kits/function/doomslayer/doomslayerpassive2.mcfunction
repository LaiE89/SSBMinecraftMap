particle dust{color:[0.000,1.000,0.000],scale:0.75} ~ ~ ~ 0 0 0 1 1 force
execute positioned ~ ~-1.35 ~ unless entity @e[distance=..1.5,tag=!InLabyrinth,type=!armor_stand,type=!item,type=!arrow,type=!experience_orb,type=!firework_rocket,tag=!Doomslayer] positioned ^ ^ ^0.5 positioned ~ ~1.35 ~ run function kits:doomslayer/doomslayerpassive2
