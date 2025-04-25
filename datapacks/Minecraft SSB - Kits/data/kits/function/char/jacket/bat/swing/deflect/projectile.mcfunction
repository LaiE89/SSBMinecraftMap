## Execute at Projectiles Hit by Swing
# Makes the projectile owned by Jacket
tag @s add JacketBatSwingDeflected
tag @s add JacketBatSwingDeflectedProjectile

# Switches projectile rotation
tp @s ~ ~ ~ ~180 ~

# Reset Jacket's cooldown
scoreboard players set @p[tag=Jacket] kits.ability1CD 95

# Sounds
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..20] ~ ~ ~ 0.25 1.25 1
playsound minecraft:item.shield.block neutral @a[distance=..20] ~ ~ ~ 2 1 1
