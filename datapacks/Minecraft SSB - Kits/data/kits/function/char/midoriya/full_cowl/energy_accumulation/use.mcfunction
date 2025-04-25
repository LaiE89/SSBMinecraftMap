## When Energy Accumulation is Used
# Stockpiles power into fist
scoreboard players add @s kits.timer4 2

# Particles
particle dust{color:[0.000,1.000,0.910],scale:1} ^-0.5 ^0.8 ^ 0.1 0.1 0.1 0 3 force
particle dust{color:[1.000,0.200,0.349],scale:0.75} ^-0.5 ^0.8 ^ 0.1 0.1 0.1 0 1 force

# Sound
playsound minecraft:entity.generic.extinguish_fire neutral @a[distance=..20] ~ ~ ~ 0.15 2 1

# Fully charged initial indication
execute if entity @s[scores={kits.timer4=100..}] run function kits:char/midoriya/full_cowl/energy_accumulation/lnit_full_indication
