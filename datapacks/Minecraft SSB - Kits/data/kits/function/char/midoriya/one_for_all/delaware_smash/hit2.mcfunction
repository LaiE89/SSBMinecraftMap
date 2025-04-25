## Execute at Enemy Hit by Shock Wave AEC
# Damage
damage @s 6 bypass:player_attack by @p[tag=Midoriya]

# Velocity passive
execute as @p[tag=Midoriya] at @s run function kits:char/midoriya/velocity2

# Particles
particle item{item:"nether_wart_block"} 0 0 0.25 5 0 0 0.25 5 force
