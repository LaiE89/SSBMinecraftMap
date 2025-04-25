## What Happens to Stunned Entities Hit by Baseball Bat 3 Times
# Damage
damage @s 12 bypass:player_attack by @p[tag=Jacket]

# Particles
particle minecraft:item{item:"minecraft:bone"} ~ ~1 ~ 0 0 0 0.5 50 force
particle minecraft:item{item:"minecraft:brain_coral"} ~ ~1 ~ 0 0 0 0.25 50 force

# Sound
playsound minecraft:entity.zombie.break_wooden_door neutral @a[distance=..20] ~ ~ ~ 0.5 0 1

# Stun reset
function kits:char/jacket/throw/stun/reset
