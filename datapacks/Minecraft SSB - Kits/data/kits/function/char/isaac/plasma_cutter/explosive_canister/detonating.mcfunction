## When Explosive Explosion Hits Another Explosive
# Detonation time
scoreboard players add @s kits.timer3 1

# Explosive detonates after 0.75 seconds
execute if score @s kits.timer3 matches 15.. run function kits:char/isaac/plasma_cutter/explosive_canister/collision

# Particles
particle flash ~ ~0.5 ~ 0 0 0 0 1 force

# Sound
playsound minecraft:block.note_block.pling neutral @a[distance=..40] ~ ~ ~ 0.5 2 0.5
