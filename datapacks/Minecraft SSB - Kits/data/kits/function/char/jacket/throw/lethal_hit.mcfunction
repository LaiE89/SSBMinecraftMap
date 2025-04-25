## Execute at Entity Hit by Lethal Thrown Item
# Damage
damage @s 6 bypass:player_attack by @p[tag=Jacket]

# Particles
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.5 25 force

# Sound
playsound minecraft:entity.player.hurt_sweet_berry_bush neutral @a[distance=..20] ~ ~ ~ 2 0 1
