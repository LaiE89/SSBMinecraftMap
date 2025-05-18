summon area_effect_cloud ^ ^ ^1.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:50,Tags:["SaberExcalibur","projectile"]}
summon area_effect_cloud ^-0.5 ^ ^1.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:50,Tags:["SaberExcalibur","projectile"]}
summon area_effect_cloud ^0.5 ^ ^1.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:50,Tags:["SaberExcalibur","projectile"]}
particle flash ~ ~1 ~ 0 0 0 0 20 force
particle end_rod ~ ~1 ~ 0 0 0 1 100 force
particle dust{color:[1.000,1.000,0.000],scale:4.0} ~ ~ ~ 0 5 0 0 100 force
playsound minecraft:item.trident.thunder neutral @a[distance=..100] ~ ~ ~ 2 1.5 1
playsound minecraft:entity.lightning_bolt.impact neutral @a[distance=..100] ~ ~ ~ 2 0 1
tag @s remove SaberExcalibur
