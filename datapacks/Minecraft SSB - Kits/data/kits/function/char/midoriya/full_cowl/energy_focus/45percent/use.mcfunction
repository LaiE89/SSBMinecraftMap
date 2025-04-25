## When Full Cowl 45% is Used
# Returns all 100% features to 45%
schedule function kits:char/midoriya/full_cowl/energy_focus/45percent/use2 1t replace

# Particles
particle poof ~ ~1 ~ 0 0 0 0.5 10 force

# Sound
playsound minecraft:entity.generic.extinguish_fire neutral @a[distance=..20] ~ ~ ~ 0.25 1 1
