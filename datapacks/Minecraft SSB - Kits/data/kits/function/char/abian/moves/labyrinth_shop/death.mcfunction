## Labyrinth Shop Death Initiate
# Damage
execute as @e[type=!#kits:non_entity,tag=AbianLabyrinthShopHit] at @s run function kits:char/abian/moves/labyrinth_shop/damage

# VFX
execute positioned ^0.125 ^1.875 ^ run function kits:char/abian/vfx/particles/death
