## When Shotgun is Used
# Fires a spread of bullets
summon area_effect_cloud ^-0.05 ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["TerminatorSpasBullet","projectile"]}
summon area_effect_cloud ^-0.15 ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["TerminatorSpasBullet","projectile"]}
summon area_effect_cloud ^0.05 ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["TerminatorSpasBullet","projectile"]}
summon area_effect_cloud ^0.15 ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["TerminatorSpasBullet","projectile"]}
execute as @e[limit=4,sort=nearest,tag=TerminatorSpasBullet,type=area_effect_cloud] at @s run tp @s ~ ~ ~ facing entity @p[tag=Terminator]

# Sound
playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 0.5 0.75 1

# Recoil
tp @s ~ ~ ~ ~ ~-10

# Reset scores
scoreboard players remove @s kits.timer 1
scoreboard players set @s kits.ability1CD 0
