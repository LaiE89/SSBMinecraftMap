scoreboard players add @s kits.timer3 1
execute at @s run particle item{item:"blue_glazed_terracotta"} ~ ~0.2 ~ 2 0 2 0 50 force
execute at @s run particle dust{color:[0.000,0.000,1.000],scale:1} ~ ~0.1 ~ 2 0 2 0 50 force
execute at @s[scores={kits.timer3=39..}] if entity @p[tag=Ryze,distance=..4] at @p[tag=Ryze,distance=..4] run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
execute at @s[scores={kits.timer3=39..}] if entity @p[tag=Ryze,distance=..4] at @p[tag=Ryze,distance=..4] run particle minecraft:dust{color:[1.000,1.000,0.000],scale:1.0} ~ ~3 ~ 0.1 4 0.1 0 200 force
execute at @s[scores={kits.timer3=40..}] as @p[tag=Ryze,distance=..4] at @s run execute positioned as @e[type=armor_stand,tag=realmwarp2,limit=1,sort=nearest] run tp @s ~ ~ ~
kill @s[scores={kits.timer3=40..}]
