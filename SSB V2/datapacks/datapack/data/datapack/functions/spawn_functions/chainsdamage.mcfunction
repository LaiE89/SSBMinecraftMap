function datapack:damage1
tag @s add SpawnChainsKB
playsound minecraft:item.crossbow.hit neutral @a[distance=..30] ~ ~ ~ 3 0 1
particle minecraft:block minecraft:redstone_block ^ ^0.6 ^1 0 0 0 0 50
scoreboard players set @e[type=armor_stand,tag=SpawnChains] Timer 16
execute as @e[type=armor_stand,tag=SpawnChains] at @s positioned ~ ~1.5 ~ run function datapack:spawn_functions/spawnpassive4
tag @e[tag=SpawnChainsKB] remove SpawnChainsKB