tag @s add ArcueidChained
playsound minecraft:block.chain.break neutral @a[distance=..40] ~ ~ ~ 10 0 1
summon area_effect_cloud ~ ~1 ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:50,Tags:["ArcueidChains"]}
