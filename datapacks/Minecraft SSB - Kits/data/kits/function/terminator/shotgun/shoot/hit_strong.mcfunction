## Execute at Enemy Hit by SPAS Bullet AEC Close Ranged
# Damage
damage @s 2.5 bypass:player_attack by @p[tag=Terminator]

# Particles
particle item{item:"bone"} ~ ~1 ~ 0 0 0 0.5 5 force
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.5 5 force

# Sounds
playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 2 0.75 1
