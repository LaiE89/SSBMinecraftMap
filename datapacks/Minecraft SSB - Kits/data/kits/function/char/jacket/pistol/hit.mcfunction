## If Pistol Bullet Collides With Entity
# Damage
execute as @e[distance=..1.75,limit=1,sort=nearest,tag=!Jacket,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run damage @s 3 bypass:player_attack by @p[tag=Jacket]

# Particles
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.25 5 force

# Sound
playsound minecraft:entity.iron_golem.damage neutral @a[distance=..20] ~ ~ ~ 2 0.75 1

# Kills bullet
kill @s
