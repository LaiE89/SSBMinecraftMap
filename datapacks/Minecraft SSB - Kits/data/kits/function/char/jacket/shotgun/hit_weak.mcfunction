## Execute at Entity Hit by Shotgun Bullet (Far Ranged)
# Damage
damage @s 1 bypass:player_attack by @p[tag=Jacket]

# Particles
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.25 5 force

# Sound
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..20] ~ ~ ~ 1 2 1
