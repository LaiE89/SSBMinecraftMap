scoreboard players set @s kits.raycastTick3 0
scoreboard players set @s kits.timer3 10
execute at @s rotated ~ 0 run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:30,Tags:["convergencestand"]}
tp @e[type=area_effect_cloud,tag=convergencestand] @s
data modify entity @e[type=area_effect_cloud,tag=convergencestand,sort=nearest,limit=1] Rotation[1] set value 0f
playsound minecraft:block.beacon.activate neutral @a[distance=..50] ~ ~ ~ 2 2 1
execute at @s positioned ~ ~1.5 ~ run function kits:ekko/ekkopassive3
scoreboard players set @s kits.ability3CD 0
