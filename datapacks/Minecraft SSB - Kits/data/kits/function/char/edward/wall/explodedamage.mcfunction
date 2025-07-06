damage @s 6 bypass:player_attack_no_kb

# Knockback
scoreboard players set @s kits.raycastTick 0
execute positioned ~ ~1 ~ facing entity @e[type=area_effect_cloud,tag=EdwardWallLocation,limit=1,sort=nearest] feet run function kits:char/edward/wall/explodekb

# Particles
particle item{item:"redstone_block"} ~ ~1 ~ 0 0 0 0.15 25 force
