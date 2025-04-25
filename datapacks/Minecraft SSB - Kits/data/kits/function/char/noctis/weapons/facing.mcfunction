execute at @s anchored eyes as @e[type=minecraft:armor_stand,tag=NoctisSelectWise,distance=..6] facing entity @s eyes anchored feet positioned ^ ^ ^1 rotated as @p positioned ^ ^ ^-1 if entity @p[tag=Noctis,dx=0] positioned ^ ^ ^1 run execute as @p[tag=Noctis] at @s run function kits:char/noctis/weapons/wise
execute at @s anchored eyes as @e[type=minecraft:armor_stand,tag=NoctisSelectWise,distance=..6] facing entity @s eyes anchored feet positioned ^ ^ ^1 rotated as @p positioned ^ ^ ^-1 unless entity @p[tag=Noctis,dx=0] positioned ^ ^ ^1 run data remove entity @e[type=minecraft:armor_stand,tag=NoctisSelectWise,limit=1] CustomNameVisible

execute at @s anchored eyes as @e[type=minecraft:armor_stand,tag=NoctisSelectTall,distance=..6] facing entity @s eyes anchored feet positioned ^ ^ ^1 rotated as @p positioned ^ ^ ^-1 if entity @p[tag=Noctis,dx=0] positioned ^ ^ ^1 run execute as @p[tag=Noctis] at @s run function kits:char/noctis/weapons/tall
execute at @s anchored eyes as @e[type=minecraft:armor_stand,tag=NoctisSelectTall,distance=..6] facing entity @s eyes anchored feet positioned ^ ^ ^1 rotated as @p positioned ^ ^ ^-1 unless entity @p[tag=Noctis,dx=0] positioned ^ ^ ^1 run data remove entity @e[type=minecraft:armor_stand,tag=NoctisSelectTall,limit=1] CustomNameVisible

execute at @s anchored eyes as @e[type=minecraft:armor_stand,tag=NoctisSelectOracle,distance=..6] facing entity @s eyes anchored feet positioned ^ ^ ^1 rotated as @p positioned ^ ^ ^-1 if entity @p[tag=Noctis,dx=0] positioned ^ ^ ^1 run execute as @p[tag=Noctis] at @s run function kits:char/noctis/weapons/oracle
execute at @s anchored eyes as @e[type=minecraft:armor_stand,tag=NoctisSelectOracle,distance=..6] facing entity @s eyes anchored feet positioned ^ ^ ^1 rotated as @p positioned ^ ^ ^-1 unless entity @p[tag=Noctis,dx=0] positioned ^ ^ ^1 run data remove entity @e[type=minecraft:armor_stand,tag=NoctisSelectOracle,limit=1] CustomNameVisible


#execute facing entity @e[type=armor_stand,tag=NoctisSelectWise,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 positioned ~0.15 ~0.15 ~0.15 as @s[dx=0] positioned ~0.7 ~0.7 ~0.7 if entity @s[dx=0] run function kits:char/noctis/weapons/wise

#execute facing entity @e[type=armor_stand,tag=NoctisSelectTall,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 positioned ~0.15 ~0.15 ~0.15 as @s[dx=0] positioned ~0.7 ~0.7 ~0.7 if entity @s[dx=0] run function kits:char/noctis/weapons/tall

#execute facing entity @e[type=armor_stand,tag=NoctisSelectOracle,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 positioned ~0.15 ~0.15 ~0.15 as @s[dx=0] positioned ~0.7 ~0.7 ~0.7 if entity @s[dx=0] run function kits:char/noctis/weapons/oracle
