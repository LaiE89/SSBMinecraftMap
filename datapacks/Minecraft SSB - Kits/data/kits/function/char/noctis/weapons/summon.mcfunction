summon area_effect_cloud ~ ~-50 ~ {Duration:300,Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["NoctisWeaponCenter"]}
particle firework ~ ~1.5 ~ 1 1 1 0.01 50 force
particle dust{color:[1.000,0.000,1.000],scale:1} ~ ~0.1 ~ 1 0 1 0 200 force
playsound minecraft:block.amethyst_block.step neutral @a[distance=..30] ~ ~ ~ 5 0.75 1
playsound minecraft:block.amethyst_block.resonate neutral @a[distance=..30] ~ ~ ~ 5 0.5 1
