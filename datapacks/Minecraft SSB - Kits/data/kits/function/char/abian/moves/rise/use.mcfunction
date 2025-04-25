## When Rise is Used
# Summons rise ritual
kill @e[tag=AbianRiseMarker,type=area_effect_cloud]
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:35,Tags:["AbianRiseMarker"]}

# FX
execute rotated ~ 90 positioned ~ ~0.5 ~ run function kits:char/abian/vfx/particles/ripple/type3
playsound item.trident.thunder neutral @a[distance=..20] ~ ~ ~ 0.5 1 0.5

# Displays inputs in actionbar
title @s actionbar [{"text":"Energy: ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/300 || ","color":"white"},{"text":"Combo Meter: ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/100 || ","color":"white"},{"text":"Inputs: ","color":"blue"},{"text":"R-S-R","color":"white"}]

# Removes input restrictions
tag @s remove AbianInputsDelay
