## Execute at Enemy Hit by Thrown Object
# Damage
damage @s 6 bypass:player_attack by @p[tag=Isaac]

# Item drops passive
function kits:char/isaac/item_drops/drop

# Particles
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.25 15 force

# Sounds
playsound minecraft:entity.iron_golem.damage neutral @a[distance=..20] ~ ~ ~ 0.5 0 1
playsound minecraft:entity.spider.step neutral @a[distance=..20] ~ ~ ~ 0.5 1.5 1
