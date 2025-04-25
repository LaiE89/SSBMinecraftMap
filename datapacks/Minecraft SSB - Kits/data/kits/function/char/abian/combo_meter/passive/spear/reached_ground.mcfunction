## Spear of Longinus Upon Reaching the Ground
# FX
execute rotated ~ 90 positioned ~ ~-2 ~ run function kits:char/abian/vfx/particles/ripple/type2
playsound item.trident.hit_ground neutral @a[distance=..20] ~ ~ ~ 2 0 1

# Stops falling
tag @s remove AbianSpearOfLonginusFalling
