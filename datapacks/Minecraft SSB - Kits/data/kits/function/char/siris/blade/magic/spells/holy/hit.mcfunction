## Execute at Enemies Hit by Holy
# Damage
damage @s 6 bypass:player_attack by @p[tag=Siris]

# VFX
execute rotated ~ 90 positioned ~ ~1 ~ run function kits:char/siris/vfx/particles/ripple/type4
particle flash ~ ~1 ~ 0 0 0 0 2 force
particle snowflake ~ ~1 ~ 0 3 0 0 100 force
