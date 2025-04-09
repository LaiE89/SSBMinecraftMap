## Infinity Remove Stack
# FX
execute positioned ~ ~1 ~ run function kits:gojo/vfx/particles/barrier
playsound block.glass.break neutral @a[distance=..20] ~ ~ ~ 0.5 0 0.5

# Removal
scoreboard players remove @s kits.timer 1
execute if score @s kits.timer matches 0 run effect clear @s resistance
