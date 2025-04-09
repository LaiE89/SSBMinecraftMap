execute at @p[tag=Raiden] run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~1 ~ 0.2 0.2 0.2 0 25 force
execute at @p[tag=Raiden] facing entity @s eyes run tp @p[tag=Raiden] ^ ^ ^1.5
execute if entity @p[distance=..4,tag=Raiden] run tag @s remove RaidenHooked
