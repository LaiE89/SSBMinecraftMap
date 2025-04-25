damage @s 6 minecraft:player_attack by @e[type=minecraft:armor_stand,tag=forceedge,limit=1,sort=nearest] from @p[tag=Vergil]
tag @s add VergilForceEdgeKB
#playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..25] ~ ~ ~ 0.5 2 1
particle block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0.4 1 0.4 0 10 force
execute as @e[type=armor_stand,tag=forceedge] at @s run scoreboard players set @s kits.raycastTick 0
execute as @e[type=armor_stand,tag=forceedge,scores={kits.timer=..5}] at @s positioned ~ ~1.5 ~ run function kits:char/vergil/vergilpassive6
tag @e[tag=VergilForceEdgeKB] remove VergilForceEdgeKB
