particle electric_spark ~ ~1 ~ 0 0 0 0 1 force
execute positioned ~ ~-1.35 ~ unless entity @p[distance=..1.5,tag=Raiden] positioned ^ ^ ^1 positioned ~ ~1.35 ~ run function kits:raiden/saiparticles
