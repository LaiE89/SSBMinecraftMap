## When Med Pack is Collected
# Healing
# effect give @s minecraft:instant_health 1 1 true
effect give @s minecraft:regeneration 1 4 true

# Particles
particle item{item:"diamond_block"} ~ ~ ~ 0 0 0 0.25 5 force

# Sound
playsound minecraft:entity.experience_orb.pickup neutral @a[distance=..5] ~ ~ ~ 1 2 1
