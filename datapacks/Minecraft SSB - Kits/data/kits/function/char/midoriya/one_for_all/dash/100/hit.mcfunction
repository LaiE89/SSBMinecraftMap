## Execute at Enemies Hit by Dash 100%
# Damage
damage @s 6 bypass:player_attack by @p[tag=Midoriya]

# Status effect
effect give @s minecraft:levitation 1 0 true

# Velocity passive
execute as @p[tag=Midoriya] at @s run function kits:char/midoriya/velocity2

# Particles
particle flash ~ ~1 ~ 0 0 0 0 1 force
particle glow_squid_ink ~ ~1 ~ 0 0 0 2 30 force

# Sound
playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 1 2 1

# Makes it where they get hit only once
tag @s add Midoriya100DashCollided
