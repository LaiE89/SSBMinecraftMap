particle flash ~ ~1 ~ 0 0 0 0 10 force
particle dust{color:[0.000,0.000,0.000],scale:4.0} ~ ~5 ~ 0 3 0 0 100 force
playsound minecraft:entity.enderman.teleport neutral @a[distance=..30] ~ ~ ~ 10 1 1
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["LaiethBolt","projectile"]}
scoreboard players set @s kits.raycastTick2 0
execute at @s positioned ~ ~1.5 ~ run function kits:char/laieth/laiethpassive3
