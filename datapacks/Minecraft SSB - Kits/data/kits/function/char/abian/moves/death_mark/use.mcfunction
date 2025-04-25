## When Death Mark is Used
# Collision
execute rotated ~ 0 positioned ^ ^ ^2 as @e[type=!#kits:non_entity,distance=..4,tag=!Abian,tag=!InLabyrinth,tag=!Invincible] at @s run function kits:char/abian/moves/death_mark/hit

# FX
execute rotated ~ 0 positioned ^-0.15625 ^1 ^ run function kits:char/abian/vfx/particles/slash/type5
playsound entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 1 0 1
playsound item.trident.return neutral @a[distance=..20] ~ ~ ~ 2 1 1

# Displays inputs in actionbar
title @s actionbar [{"text":"Energy: ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/300 || ","color":"white"},{"text":"Combo Meter: ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/100 || ","color":"white"},{"text":"Inputs: ","color":"blue"},{"text":"R-R-R","color":"white"}]

# Removes input restrictions
tag @s remove AbianInputsDelay
