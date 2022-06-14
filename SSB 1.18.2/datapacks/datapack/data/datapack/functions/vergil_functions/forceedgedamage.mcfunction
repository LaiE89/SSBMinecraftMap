function datapack:damage1
tag @s add VergilForceEdgeKB
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..25] ~ ~ ~ 0.5 2 1
particle minecraft:block minecraft:redstone_block ~ ~ ~ 0.4 1 0.4 0 10
execute as @e[type=armor_stand,tag=forceedge] at @s run scoreboard players set @s RaycastTimer 0
execute as @e[type=armor_stand,tag=forceedge] at @s positioned ~ ~1.5 ~ run function datapack:vergil_functions/vergilpassive3
tag @e[tag=VergilForceEdgeKB] remove VergilForceEdgeKB

tag @e[tag=VergilForceEdgeKB] remove VergilForceEdgeKB