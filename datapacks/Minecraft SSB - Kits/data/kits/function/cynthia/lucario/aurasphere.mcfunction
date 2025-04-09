effect give @s minecraft:mining_fatigue 1 9 true
effect give @s minecraft:weakness 1 9 true
effect give @s minecraft:slowness 1 2 true
playsound minecraft:entity.guardian.attack neutral @a[distance=..20] ~ ~ ~ 1 2 1
tag @s add LucarioAuraSphere
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["LucarioAuraSphere","LucarioAuraSphereCharge"]}
schedule function kits:cynthia/lucario/auraspherelaunch 22t append
scoreboard players set @s kits.ability4CD 0
