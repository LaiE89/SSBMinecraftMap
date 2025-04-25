scoreboard players add @s kits.raycastTick2 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute as @s[scores={kits.raycastTick2=2222..}] positioned ~ ~0.5 ~ run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:100,Tags:["EdwardWallLocation"]}
execute as @s[scores={kits.raycastTick2=2222..}] positioned ~ ~0.5 ~ run particle block{block_state:"minecraft:dirt"} ^ ^ ^-0.5 3 0 3 1 100 force
execute as @s[scores={kits.raycastTick2=2222..}] positioned ~ ~0.5 ~ run schedule function kits:char/edward/wallsummon 10t append 
execute as @s[scores={kits.raycastTick2=..49}] positioned ~ ~-0.5 ~ run function kits:char/edward/walldownlocation
