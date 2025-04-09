## Execute at Mobs/Players Hit by Swing
# Damage
damage @s 0.25 bypass:player_attack by @p[tag=Jacket]

# Knockback
#tag @s add JacketBatSwingKB

# Particles
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.25 2 force

# Sounds
#playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 2 0.5 1
playsound minecraft:item.shield.block neutral @a[distance=..20] ~ ~ ~ 2 0.5 1
