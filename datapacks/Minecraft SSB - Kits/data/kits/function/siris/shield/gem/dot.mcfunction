## Darkfire Damage Over Time
# Damage
damage @s 5 player_attack
scoreboard players reset @s kits.specific.kits.specific.sirisDarkfire2

# FX
execute positioned ~ ~1 ~ rotated as @p[tag=Siris] rotated ~90 ~45 run function kits:siris/vfx/particles/slash/type3
particle item{item:"nether_wart_block"} 0 0 0.25 10 0 0 0.25 10 force
playsound entity.player.hurt_on_fire neutral @a[distance=..20] ~ ~ ~ 1 0.5 1
