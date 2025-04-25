## Execute at Enemies Hit by Super
# Damage
damage @s 2 player_attack

# FX
particle item{item:"nether_wart_block"} 0 0 0.25 1 0 0 0.25 1 force
playsound entity.player.hurt_sweet_berry_bush neutral @a[distance=..20] ~ ~ ~ 0.5 0.5 0.5
