## Execute at Enemy Hit by Detroit Smash
# Damage
damage @s 9 bypass:player_attack by @p[tag=Midoriya]

# Knockback
tag @s add MidoriyaDetroitSmashKB

# Particles
particle flash ~ ~1 ~ 0 0 0 0 1 force
particle glow_squid_ink ~ ~1 ~ 0 0 0 2 30 force
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.75 20 force
