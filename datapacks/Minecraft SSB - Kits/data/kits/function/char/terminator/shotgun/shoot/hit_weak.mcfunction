## Execute at Enemy Hit by SPAS Bullet AEC Far Ranged
# Damage
damage @s 0.5 bypass:player_attack_no_kb by @p[tag=Terminator]

# Particles
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.25 5 force

playsound minecraft:entity.player.attack.weak neutral @a[distance=..20] ~ ~ ~ 2 2 1
