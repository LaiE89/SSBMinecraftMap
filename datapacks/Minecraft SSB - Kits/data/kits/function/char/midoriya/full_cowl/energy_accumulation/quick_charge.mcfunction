## Accumulates Energy Quickly When Velocity is Activated
# Stockpiles power into fist
scoreboard players add @s kits.timer4 10

# Particles
particle dust{color:[0.000,1.000,0.910],scale:1} ~ ~1 ~ 0.35 0.75 0.35 0 10 force
particle dust{color:[1.000,0.200,0.349],scale:0.75} ~ ~1 ~ 0.35 0.75 0.35 0 5 force

# Fully charged initial indication
execute if entity @s[scores={kits.timer4=100..}] run function kits:char/midoriya/full_cowl/energy_accumulation/lnit_full_indication
