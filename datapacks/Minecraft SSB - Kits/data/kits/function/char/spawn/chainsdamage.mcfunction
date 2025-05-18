damage @s 4 minecraft:player_attack by @p[tag=Spawn]
#tag @s add SpawnChainsKB
playsound minecraft:block.chain.hit neutral @a[distance=..30] ~ ~ ~ 3 0 1
playsound minecraft:block.chain.step neutral @a[distance=..30] ~ ~ ~ 3 0 1
particle block{block_state:"minecraft:redstone_block"} ^ ^0.6 ^1 0 0 0 0 5 force
execute as @e[type=area_effect_cloud,tag=SpawnChains,scores={kits.timer=..15}] at @s positioned ~ ~0.15 ~ run function kits:char/spawn/spawnpassive4
scoreboard players set @e[type=area_effect_cloud,tag=SpawnChains] kits.timer 11
tag @e[tag=SpawnChainsKB] remove SpawnChainsKB
