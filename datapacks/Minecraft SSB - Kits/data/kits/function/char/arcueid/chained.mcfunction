tag @s add ArcueidChained
playsound minecraft:block.chain.break neutral @a[distance=..40] ~ ~ ~ 10 0 1
summon area_effect_cloud ~ ~1 ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["ArcueidChains"]}
effect give @s minecraft:mining_fatigue 2 9 true
effect give @s minecraft:weakness 2 9 true
effect give @p[tag=Arcueid] minecraft:mining_fatigue 2 9 true
effect give @p[tag=Arcueid] minecraft:weakness 2 9 true
scoreboard players set @p[tag=Arcueid] kits.ability4CD 0