## When User Repeats Moves
# Higher energy consumption
scoreboard players remove @s kits.ability2CD 120

# SFX
playsound entity.generic.extinguish_fire neutral @a[distance=..10] ~ ~ ~ 0.5 1 1

# Resets detection
tag @s remove AbianRepeatedMove
