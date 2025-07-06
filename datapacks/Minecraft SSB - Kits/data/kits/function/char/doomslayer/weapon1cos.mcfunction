summon area_effect_cloud ^ ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:8,Tags:["DoomslayerSuperShotgunBullet","projectile"]}
summon area_effect_cloud ^ ^0.05 ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:8,Tags:["DoomslayerSuperShotgunBullet","projectile"]}
summon area_effect_cloud ^-0.025 ^-0.05 ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:8,Tags:["DoomslayerSuperShotgunBullet","projectile"]}
summon area_effect_cloud ^0.05 ^0.025 ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:8,Tags:["DoomslayerSuperShotgunBullet","projectile"]}
summon area_effect_cloud ^-0.05 ^0.025 ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:8,Tags:["DoomslayerSuperShotgunBullet","projectile"]}
summon area_effect_cloud ^0.025 ^-0.05 ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:8,Tags:["DoomslayerSuperShotgunBullet","projectile"]}
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:8,Tags:["DoomslayerSuperShotgunOrigin"]}
playsound minecraft:entity.generic.explode neutral @a[distance=..30] ~ ~ ~ 2 1.5 1
#effect give @s minecraft:mining_fatigue 1 9 true
scoreboard players add @s kits.timer 1
scoreboard players set @s kits.ability1CD 0
