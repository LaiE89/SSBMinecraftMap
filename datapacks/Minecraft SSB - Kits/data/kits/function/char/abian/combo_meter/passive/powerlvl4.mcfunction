## When User Reaches 100%
# VFX
execute rotated ~ 0 positioned ^0.0625 ^0.875 ^1 run function kits:char/abian/vfx/particles/shield/type4

# Resistance level 3
effect give @s resistance 2 2 true

# Uses spear of longinus
function kits:char/abian/combo_meter/passive/spear/use

# Resets combo meter
scoreboard players set @s kits.ability3CD 0
scoreboard players set @s kits.ability4CD 0
