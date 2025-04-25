## When Destroyer Blade is Used
# Summons destroyer blade
kill @e[tag=AbianDestroyerBlade,type=area_effect_cloud]
summon area_effect_cloud ~ ~ ~ {Duration:20,Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["AbianDestroyerBlade","projectile"]}
tp @e[limit=1,sort=nearest,tag=AbianDestroyerBlade,type=area_effect_cloud] @s

# FX
execute rotated ~ 90 positioned ~ ~1 ~ run function kits:char/abian/vfx/particles/ripple/type4
playsound entity.wither.shoot neutral @a[distance=..20] ~ ~ ~ 1 1 1
tp @s ~ ~ ~ ~ ~-5

# Displays inputs in actionbar
title @s actionbar [{"text":"Energy: ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/300 || ","color":"white"},{"text":"Combo Meter: ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/100 || ","color":"white"},{"text":"Inputs: ","color":"blue"},{"text":"R-R-S","color":"white"}]

# Removes input restrictions
tag @s remove AbianInputsDelay
