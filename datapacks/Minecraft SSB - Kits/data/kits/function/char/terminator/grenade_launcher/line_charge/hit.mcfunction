## Execute at Enemy Hit by Line Charge Grenade
# Damage
damage @s 6 bypass:player_attack by @p[tag=Terminator]

# Terminate passive
execute as @p[tag=Terminator] at @s run function kits:char/terminator/terminate/damage_enemy

# Particles
particle item{item:"redstone_block"} ~ ~1 ~ 0 0 0 0.25 20 force

# Sounds
playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 1 0 1
playsound minecraft:entity.player.hurt_on_fire neutral @a[distance=..20] ~ ~ ~ 1 0.5 1

# Makes it where they get hit only once
tag @s add TerminatorLineChargeGrenadeHit
