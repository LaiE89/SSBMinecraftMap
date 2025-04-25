## When Starstorm is Used
# Calculates how far starstorm will spawn
scoreboard players set @s kits.raycastTick 0
execute positioned ~ ~1.5 ~ run function kits:char/abian/moves/starstorm/calculate_range

# FX
execute rotated ~ 0 positioned ^0.0625 ^2.4375 ^ run function kits:char/abian/vfx/particles/star
playsound entity.evoker.prepare_summon neutral @a[distance=..20] ~ ~ ~ 0.5 2 0.5

# Displays inputs in actionbar
title @s actionbar [{"text":"Energy: ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/300 || ","color":"white"},{"text":"Combo Meter: ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/100 || ","color":"white"},{"text":"Inputs: ","color":"blue"},{"text":"S-R-S","color":"white"}]

# Removes input restrictions
tag @s remove AbianInputsDelay
