## Darkfire Damage Over Time
# Damage
damage @s 6 bypass:player_attack by @p[tag=Siris]
scoreboard players reset @s kits.specific.sirisDarkfire2

# FX
execute positioned ~ ~1 ~ rotated as @p[tag=Siris] rotated ~90 ~45 run function kits:char/siris/vfx/particles/slash/type3
particle item{item:"nether_wart_block"} 0 0 0.25 10 0 0 0.25 10 force
playsound entity.player.hurt_on_fire neutral @a[distance=..20] ~ ~ ~ 1 0.5 1
