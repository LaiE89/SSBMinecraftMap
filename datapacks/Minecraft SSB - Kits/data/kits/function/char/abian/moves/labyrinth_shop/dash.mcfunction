## Execute at User Upon Dash
# FX
execute positioned as @s rotated ~ 90 positioned ~ ~0.5 ~ run function kits:char/abian/vfx/particles/ripple/type2
playsound entity.ender_dragon.shoot neutral @a[distance=..20] ~ ~ ~ 2 0 1
playsound item.trident.riptide_2 neutral @a[distance=..20] ~ ~ ~ 1.75 0 1

# Initiates dash
scoreboard players set @s kits.raycastTick 0
function kits:char/abian/moves/labyrinth_shop/dashing
