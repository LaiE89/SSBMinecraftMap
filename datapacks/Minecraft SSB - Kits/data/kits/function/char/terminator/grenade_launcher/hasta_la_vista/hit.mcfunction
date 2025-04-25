## Execute at Enemy Hit by HLV Grenade AEC
# Damage
damage @s 9 bypass:player_attack by @p[tag=Terminator]

# Terminate passive
execute as @p[tag=Terminator] at @s run function kits:char/terminator/terminate/damage_enemy

# Particles
particle item{item:"redstone_block"} ~ ~1 ~ 0 0 0 0.35 10 force

# Sounds
playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 1 0 1
playsound minecraft:entity.player.hurt_on_fire neutral @a[distance=..20] ~ ~ ~ 1 0.5 1
