## Execute at Enemies Hit by Dash
# Status effect
damage @s 4 minecraft:player_attack by @p[tag=Terminator]

# Particles
particle flash ~ ~1 ~ 0 0 0 0 1 force
particle glow_squid_ink ~ ~1 ~ 0 0 0 2 30 force

# Sound
playsound minecraft:entity.zombie_villager.cure neutral @a[distance=..20] ~ ~ ~ 0.25 2 1

# Makes it where they get hit only once
tag @s add TerminatorDashCollided
