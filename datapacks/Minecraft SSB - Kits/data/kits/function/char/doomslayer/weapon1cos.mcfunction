summon area_effect_cloud ^ ^ ^0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["supershotgun","projectile"]}
summon area_effect_cloud ^ ^0.05 ^0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["supershotgun","projectile"]}
summon area_effect_cloud ^-0.025 ^-0.05 ^0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["supershotgun","projectile"]}
summon area_effect_cloud ^0.05 ^0.025 ^0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["supershotgun","projectile"]}
summon area_effect_cloud ^-0.05 ^0.025 ^0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["supershotgun","projectile"]}
summon area_effect_cloud ^0.025 ^-0.05 ^0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["supershotgun","projectile"]}
playsound minecraft:entity.generic.explode neutral @a[distance=..30] ~ ~ ~ 2 1.5 1
effect give @s minecraft:mining_fatigue 1 9 true
#schedule function kits:char/doomslayer/shotgunreload 25t replace
scoreboard players add @s kits.timer 1
scoreboard players set @s kits.ability1CD 0
