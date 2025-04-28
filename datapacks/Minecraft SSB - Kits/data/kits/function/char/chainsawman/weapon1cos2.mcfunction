playsound minecraft:block.grindstone.use neutral @a[distance=..15] ~ ~ ~ 3 2 1
summon area_effect_cloud ^ ^ ^ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:12,Tags:["ChainsawmanChain","projectile"]}
tp @e[type=area_effect_cloud,tag=ChainsawmanChain] @s
scoreboard players set @s kits.ability1CD 0
