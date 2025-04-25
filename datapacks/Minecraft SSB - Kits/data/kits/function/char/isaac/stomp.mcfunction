## Execute at Enemy When Stomped On
# Damage
damage @s 4 bypass:player_attack by @p[tag=Isaac]
function kits:char/isaac/item_drops/drop

# Particles
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.5 50 force

# Sounds
playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 2 0 1
playsound minecraft:entity.player.attack.strong neutral @a[distance=..20] ~ ~ ~ 2 0 1
playsound minecraft:entity.spider.step neutral @a[distance=..20] ~ ~ ~ 0.25 1.5 1
