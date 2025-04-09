summon area_effect_cloud ^ ^ ^0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["handcannonshot","projectile"]}
summon area_effect_cloud ^ ^0.01 ^0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["handcannonshot","projectile"]}
summon area_effect_cloud ^ ^0.03 ^0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["handcannonshot","projectile"]}
summon area_effect_cloud ^0.02 ^0.02 ^0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["handcannonshot","projectile"]}
summon area_effect_cloud ^-0.02 ^0.04 ^0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["handcannonshot","projectile"]}
summon area_effect_cloud ^0.03 ^ ^0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["handcannonshot","projectile"]}
summon area_effect_cloud ^-0.03 ^ ^0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["handcannonshot","projectile"]}
playsound minecraft:entity.generic.hurt neutral @a[distance=..10] ~ ~ ~ 1 0 1
particle crit ^0.4 ^1 ^1 0.2 0.2 0.2 0 5 force
scoreboard players remove @s kits.ability5CD 1
