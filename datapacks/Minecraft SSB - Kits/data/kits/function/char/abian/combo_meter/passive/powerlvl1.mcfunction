## When User Reaches 25%
# VFX
execute unless entity @s[nbt={active_effects:[{id:"minecraft:resistance"}]}] rotated ~ 0 positioned ^0.0625 ^0.875 ^1 run function kits:char/abian/vfx/particles/shield/type1

# Resistance level 1
effect give @s resistance 2 0 true
