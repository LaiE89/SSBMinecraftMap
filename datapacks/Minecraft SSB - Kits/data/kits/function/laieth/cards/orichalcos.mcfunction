summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:100,Tags:["LaiethOrichalcos"]}
playsound minecraft:entity.guardian.ambient neutral @a[distance=..30] ~ ~ ~ 5 1 1
playsound minecraft:entity.guardian.attack neutral @a[distance=..30] ~ ~ ~ 5 2 1
playsound minecraft:entity.evoker.prepare_summon neutral @a[distance=..30] ~ ~ ~ 5 1 1
particle flash ~ ~ ~ 0 0 0 0 1 force
execute rotated ~ 90 run function kits:laieth/cards/orichalcosparticles2
