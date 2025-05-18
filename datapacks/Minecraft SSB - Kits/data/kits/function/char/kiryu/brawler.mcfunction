scoreboard players reset @s kits.timer3
playsound minecraft:block.gravel.fall neutral @a[distance=..12] ~ ~ ~ 3 2 1
particle sweep_attack ^ ^1.5 ^1.5 0 0 0 0 1 force
summon area_effect_cloud ^ ^ ^0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:20,Tags:["KiryuSalt","projectile"]}
summon area_effect_cloud ^0.15 ^0.01 ^0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:20,Tags:["KiryuSalt","projectile"]}
summon area_effect_cloud ^-0.15 ^-0.01 ^0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:20,Tags:["KiryuSalt","projectile"]}
particle dust{color:[0.000,0.000,1.000],scale:2} ~ ~1 ~ 0.4 0.6 0.4 0 50 force
effect clear @s strength
tag @s add KiryuBrawler
