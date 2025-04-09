## If Plasma Bolt Ray Hits Body
# Damage
damage @s 6 bypass:player_attack by @p[tag=Isaac]

# Particles
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.15 10 force

# Sounds
playsound minecraft:entity.spider.step neutral @a[distance=..20] ~ ~ ~ 1 1.5 1
playsound minecraft:entity.zombie.break_wooden_door neutral @a[distance=..20] ~ ~ ~ 1 0.75 1

# Removes hit identification
tag @s remove IsaacPlasmaCutHit
