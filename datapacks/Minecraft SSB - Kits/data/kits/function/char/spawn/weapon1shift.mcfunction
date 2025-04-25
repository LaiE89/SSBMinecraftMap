summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["SpawnChains"]}
tp @e[type=area_effect_cloud,tag=SpawnChains] @s
playsound minecraft:item.armor.equip_chain neutral @a[distance=..20] ~ ~ ~ 3 0 1
scoreboard players set @s kits.ability1CD 0
