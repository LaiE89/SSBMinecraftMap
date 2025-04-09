## Execute at Enemy Hit by Shock Wave 100% AEC
# Damage
damage @s 12 bypass:player_attack by @p[tag=Midoriya]

# Knockback
tag @s add Midoriya100DelawareSmashKB

# Velocity passive
execute as @p[tag=Midoriya] at @s run function kits:midoriya/velocity

# Particles
particle item{item:"nether_wart_block"} 0 0 0.75 30 0 0 0.75 30 force
