particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0 1 force
summon area_effect_cloud ^-0.2 ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["SekiroFirecracker","projectile"]}
summon area_effect_cloud ^-0.6 ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["SekiroFirecracker","projectile"]}
summon area_effect_cloud ^0.2 ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["SekiroFirecracker","projectile"]}
summon area_effect_cloud ^0.6 ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["SekiroFirecracker","projectile"]}
execute as @e[type=area_effect_cloud,limit=4,sort=nearest,tag=SekiroFirecracker] at @s run tp @s ~ ~ ~ facing entity @p[tag=Sekiro]

function kits:char/sekiro/spiritemblems/cost {Emblems:3}
playsound minecraft:block.dispenser.launch neutral @a[distance=..30] ~ ~ ~ 2 0 1
scoreboard players set @s kits.ability5CD 0