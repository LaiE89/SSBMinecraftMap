## When Terra Blade is Used
# Summons terra blade
kill @e[tag=AbianTerraBlade,type=area_effect_cloud]
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:70,Tags:["AbianTerraBlade"]}
tp @e[limit=1,sort=nearest,tag=AbianTerraBlade,type=area_effect_cloud] ~ ~ ~ ~ 0

# SFX
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 0.5 0 0.5

# Displays inputs in actionbar
title @s actionbar [{"text":"Energy: ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/300 || ","color":"white"},{"text":"Combo Meter: ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/100 || ","color":"white"},{"text":"Inputs: ","color":"blue"},{"text":"S-S-S","color":"white"}]

# Removes input restrictions
tag @s remove AbianInputsDelay
