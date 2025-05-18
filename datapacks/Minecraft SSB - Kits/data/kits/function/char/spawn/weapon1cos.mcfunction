kill @e[type=area_effect_cloud,tag=SpawnChains]
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["SpawnChainsProjectile","SpawnChains"]}
summon area_effect_cloud ^ ^ ^12 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["SpawnChainsLocation","SpawnChains"]}
tp @e[type=area_effect_cloud,tag=SpawnChainsProjectile] @s
execute store result score @e[type=area_effect_cloud,tag=SpawnChainsProjectile] kits.timer2 run random value 1..2
playsound minecraft:block.chain.place neutral @a[distance=..30] ~ ~ ~ 10 1 1
scoreboard players set @s kits.ability1CD 0