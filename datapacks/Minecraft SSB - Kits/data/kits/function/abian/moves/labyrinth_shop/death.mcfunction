## Labyrinth Shop Death Initiate
# Damage
execute as @e[type=!#kits:non_entity,tag=AbianLabyrinthShopHit] at @s run function kits:abian/moves/labyrinth_shop/damage

# VFX
execute positioned ^0.125 ^1.875 ^ run function kits:abian/vfx/particles/death
