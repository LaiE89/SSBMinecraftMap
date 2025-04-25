## Execute at Enemy Hit by Detroit Smash 100%
# Damage
damage @s 15 bypass:player_attack by @p[tag=Midoriya]
effect give @s minecraft:wither 2 9 true
effect give @s minecraft:weakness 2 0 true
effect give @s minecraft:slowness 2 9 true

# Knockback
tag @s add Midoriya100DetroitSmashKB

# Particles
particle cloud ~ ~1 ~ 0 0 0 2 30 force
particle flash ~ ~1 ~ 0 0 0 0 1 force
particle glow_squid_ink ~ ~1 ~ 0 0 0 2 30 force
particle item{item:"nether_wart_block"} 0 0 0.75 30 0 0 0.75 30 force
