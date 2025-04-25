scoreboard players set @s kits.raycastTick3 0
scoreboard players set @s kits.timer5 10
execute at @s rotated ~ 0 run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:30,Tags:["EkkoConvergence","EkkoConvergenceImage"]}
tp @e[type=area_effect_cloud,tag=EkkoConvergenceImage] @s
data modify entity @e[type=area_effect_cloud,tag=EkkoConvergenceImage,sort=nearest,limit=1] Rotation[1] set value 0f
playsound minecraft:block.beacon.activate neutral @a[distance=..50] ~ ~ ~ 2 2 1
execute at @s positioned ~ ~1.5 ~ run function kits:char/ekko/convergence/position
scoreboard players set @s kits.ability3CD 0
