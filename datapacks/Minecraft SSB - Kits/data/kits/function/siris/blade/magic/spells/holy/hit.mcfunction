## Execute at Enemies Hit by Holy
# Damage
damage @s 7 player_attack

# VFX
execute rotated ~ 90 positioned ~ ~1 ~ run function kits:siris/vfx/particles/ripple/type4
particle flash ~ ~1 ~ 0 0 0 0 2 force
particle snowflake ~ ~1 ~ 0 3 0 0 100 force
