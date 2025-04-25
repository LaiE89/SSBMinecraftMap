## Execute at Object Being Grabbed by Isaac
# Copies isaac's rotation
data modify entity @s Rotation set from entity @p[tag=Isaac] Rotation

# Particles
particle dust{color:[0.000,1.000,1.000],scale:0.5} ~ ~0.5 ~ 0.35 0.35 0.35 0 5 force
