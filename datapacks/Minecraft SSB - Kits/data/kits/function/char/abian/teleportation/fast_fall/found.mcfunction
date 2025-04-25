## When User Has Ground Below While Using Fast Fall
# FX
execute positioned as @s rotated ~180 0 positioned ~ ~-0.4 ~ run function kits:char/abian/vfx/particles/afterimages/sneak
execute rotated ~ 90 positioned ~ ~0.5 ~ run function kits:char/abian/vfx/particles/ripple/type1
playsound entity.illusioner.prepare_blindness neutral @a[distance=..20] ~ ~ ~ 0.5 2 0.5

# Teleports to the ground
effect clear @s levitation
tp @s ~ ~0.5 ~

# Resets scores
scoreboard players set @s kits.ability5CD 0
