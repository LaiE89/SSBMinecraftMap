## Execute at Enemies Hit by Aerial Slash
# Combo stun
scoreboard players set @s kits.specific.abianComboStun 5

# FX
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.2 5 force
playsound entity.player.hurt_sweet_berry_bush neutral @a[distance=..20] ~ ~ ~ 2 0 1
