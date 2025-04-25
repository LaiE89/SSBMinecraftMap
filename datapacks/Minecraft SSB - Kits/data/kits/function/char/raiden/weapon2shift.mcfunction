summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["raidensai","projectile"]}
tp @e[type=area_effect_cloud,tag=raidensai] @s

playsound minecraft:item.crossbow.shoot neutral @a[distance=..30] ~ ~ ~ 5 0.75 1

scoreboard players set @s kits.ability4CD 0
