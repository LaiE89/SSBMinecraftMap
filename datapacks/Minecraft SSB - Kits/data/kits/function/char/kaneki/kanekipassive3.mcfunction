particle dust{color:[1.000,0.000,0.000],scale:0.5} ~ ~ ~ 0 0 0 0 1 force
execute unless block ~ ~1 ~ #kits:passable run function kits:char/kaneki/kagunetoofar
execute positioned ~ ~-1.35 ~ unless entity @a[distance=..1.5,tag=Kaneki] positioned ^ ^ ^1 positioned ~ ~1.37 ~ run function kits:char/kaneki/kanekipassive3
