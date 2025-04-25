## When User Reaches 75%
# VFX
execute unless entity @s[nbt={active_effects:[{id:"minecraft:resistance",amplifier:2b}]}] rotated ~ 0 positioned ^0.0625 ^0.875 ^1 run function kits:char/abian/vfx/particles/shield/type3

# Resistance level 3
effect give @s resistance 2 2 true
