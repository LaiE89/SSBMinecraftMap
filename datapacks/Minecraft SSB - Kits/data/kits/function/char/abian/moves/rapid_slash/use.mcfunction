## When Rapid Slash is Used
# Initiates dash and slashes
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["AbianRslashTravelMarker","AbianRslashYRotUp"]}
tp @e[limit=1,sort=nearest,tag=AbianRslashTravelMarker,type=area_effect_cloud] @s

# Calculates how far dash will travel
scoreboard players set @s kits.raycastTick 0
execute rotated ~ 0 positioned ~ ~ ~ run function kits:char/abian/moves/rapid_slash/calculate_range

# Displays inputs in actionbar
title @s actionbar [{"text":"Energy: ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/300 || ","color":"white"},{"text":"Combo Meter: ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/100 || ","color":"white"},{"text":"Inputs: ","color":"blue"},{"text":"S-R-R","color":"white"}]

# Removes input restrictions (delayed)
schedule function kits:char/abian/inputs/reset/global/delay 3s replace
