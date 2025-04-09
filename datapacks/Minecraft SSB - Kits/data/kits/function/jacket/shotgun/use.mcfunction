## When Shotgun Is Fired
# Fires a spread of bullets
summon area_effect_cloud ^ ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:7,Tags:["JacketShotgunBullet","JacketProjectile","projectile"]}
summon area_effect_cloud ^0.075 ^0.075 ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:7,Tags:["JacketShotgunBullet","JacketProjectile","projectile"]}
summon area_effect_cloud ^-0.075 ^0.075 ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:7,Tags:["JacketShotgunBullet","JacketProjectile","projectile"]}
summon area_effect_cloud ^0.075 ^-0.075 ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:7,Tags:["JacketShotgunBullet","JacketProjectile","projectile"]}
summon area_effect_cloud ^-0.075 ^-0.075 ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:7,Tags:["JacketShotgunBullet","JacketProjectile","projectile"]}
execute as @e[limit=5,sort=nearest,tag=JacketShotgunBullet,type=area_effect_cloud] at @s run tp @s ~ ~ ~ facing entity @p[tag=Jacket]

# Recoil
tp @s ~ ~ ~ facing ^ ^0.5 ^2

# Sounds
playsound minecraft:block.end_gateway.spawn neutral @a[distance=..20] ~ ~ ~ 2 1 1

# Reset scores
scoreboard players remove @s kits.timer 1
scoreboard players set @s kits.ability3CD 0
