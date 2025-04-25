## When User Reaches 50%
# VFX
execute unless entity @s[nbt={active_effects:[{id:"minecraft:resistance",amplifier:1b}]}] rotated ~ 0 positioned ^0.0625 ^0.875 ^1 run function kits:char/abian/vfx/particles/shield/type2

# Resistance level 2
effect give @s resistance 2 1 true
