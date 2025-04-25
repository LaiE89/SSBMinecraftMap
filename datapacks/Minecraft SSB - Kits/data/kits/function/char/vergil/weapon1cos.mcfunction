execute at @s rotated ~ 0 run summon area_effect_cloud ^1.75 ^0.25 ^ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:100s,Tags:["summonedswords","summonedswordsdelay","projectile"]}
execute at @s rotated ~ 0 run summon area_effect_cloud ^1.5 ^1.125 ^0.25 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:100s,Tags:["summonedswords","summonedswordsdelay","projectile"]}
execute at @s rotated ~ 0 run summon area_effect_cloud ^1.25 ^2 ^0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:100s,Tags:["summonedswords","summonedswordsdelay","projectile"]}
execute at @s rotated ~ 0 run summon area_effect_cloud ^-1.75 ^0.25 ^ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:100s,Tags:["summonedswords","summonedswordsdelay","projectile"]}
execute at @s rotated ~ 0 run summon area_effect_cloud ^-1.5 ^1.125 ^0.25 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:100s,Tags:["summonedswords","summonedswordsdelay","projectile"]}
execute at @s rotated ~ 0 run summon area_effect_cloud ^-1.25 ^2 ^0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:100s,Tags:["summonedswords","summonedswordsdelay","projectile"]}
execute as @e[type=area_effect_cloud,tag=summonedswords] at @s run data modify entity @s Rotation set from entity @p[tag=Vergil] Rotation
scoreboard players set @s kits.raycastTick3 0
execute positioned ~ ~1.5 ~ run function kits:char/vergil/vergilpassive7
particle flash ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:block.respawn_anchor.deplete neutral @a[distance=..30] ~ ~ ~ 3 1.25 1
schedule function kits:char/vergil/summonedswordsdelay 5t replace
scoreboard players set @s kits.ability2CD 0
