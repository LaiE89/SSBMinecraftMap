## If Deflected Projectile Collides With Entity
# Damage
execute as @e[distance=..2,limit=1,sort=nearest,tag=!Jacket,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:char/damage2

# Particles
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.25 50 force

# Sound
playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 2 0.5 1

# Kills projectile
kill @s
