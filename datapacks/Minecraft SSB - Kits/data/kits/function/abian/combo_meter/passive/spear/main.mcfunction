## Execute at Spear of Longinus
# VFX
execute rotated ~ 0 positioned ^0.0416667 ^0.125 ^ run function kits:abian/vfx/particles/spear

# Falling
execute if entity @s[tag=AbianSpearOfLonginusFalling] run function kits:abian/combo_meter/passive/spear/falling
