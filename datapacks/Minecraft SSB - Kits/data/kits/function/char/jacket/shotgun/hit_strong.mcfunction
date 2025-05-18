## Execute at Entity Hit by Shotgun Bullet (Close Ranged)
# Damage
damage @s 1.5 bypass:player_attack by @p[tag=Jacket]

# Resets stun kits.timer when stunned again
scoreboard players reset @s kits.specific.jacketStunTick

# Stun
tag @s[tag=!JacketStun] add JacketStun

# Knockback
#tag @s add JacketShotgunKB

# Particles
particle item{item:"bone"} ~ ~1 ~ 0 0 0 0.25 10 force
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.25 10 force

# Sounds
playsound minecraft:entity.iron_golem.damage neutral @a[distance=..20] ~ ~ ~ 2 0 1
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..20] ~ ~ ~ 1 0 1

# Kills all bullets nearby to prevent double hit
#kill @e[distance=..3,limit=5,sort=nearest,tag=JacketShotgunBullet,type=area_effect_cloud]
