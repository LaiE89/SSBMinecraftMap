## Execute at Entity Hit by Thrown Item
# Lethal thrown item collision
execute if entity @e[distance=..3,limit=1,sort=nearest,tag=JacketThrowLethalItemTasks,type=area_effect_cloud] run function kits:char/jacket/throw/lethal_hit

# Damage
damage @s 6 bypass:player_attack by @p[tag=Jacket]

# Resets stun kits.timer when stunned again
scoreboard players reset @s kits.specific.jacketStunTick

# Stun
tag @s add JacketStun

# Particles
particle damage_indicator ~ ~1 ~ 0 0 0 1 5 force

# Sound
playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 2 0 1
