particle dust{color:[0.773,0.600,0.420],scale:0.5} ~ ~1 ~ 0.05 0.05 0.05 1 10 force
execute positioned ~ ~-1.35 ~ unless entity @e[distance=..1.5,type=area_effect_cloud,tag=LuffyPistolAngle] positioned ^ ^ ^0.75 positioned ~ ~1.35 ~ run function kits:char/luffy/arm/particles2
