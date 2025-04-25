## Execute at Enemy Hit by Thrown Sharp Object
# Damage
damage @s 12 bypass:player_attack by @p[tag=Isaac]

# Item drops passive
function kits:char/isaac/item_drops/drop

# Particles
particle item{item:"redstone_block"} ~ ~1 ~ 0 0 0 0.5 25 force

# Sounds
playsound minecraft:entity.player.hurt_sweet_berry_bush neutral @a[distance=..20] ~ ~ ~ 2 0 1
playsound minecraft:entity.spider.step neutral @a[distance=..20] ~ ~ ~ 0.5 1.5 1
