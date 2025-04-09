## Execute at Stasis Projectile When Launched by Isaac
# Copies isaac's rotation
data modify entity @s Rotation set from entity @p[tag=Isaac] Rotation

# Teleports upwards
tp @s ~ ~1 ~
