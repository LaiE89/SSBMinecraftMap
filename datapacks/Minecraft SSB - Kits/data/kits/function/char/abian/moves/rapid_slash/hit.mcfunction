## Execute at Enemies Hit by Rapid Slash
# Damage
damage @s 3 bypass:player_attack by @p[tag=Abian]

# Combo stun
scoreboard players set @s kits.specific.abianComboStun 10

# Combo meter
execute as @p[tag=Abian] at @s run function kits:char/abian/combo_meter/charge/normal
execute if score @s kits.specific.abianMarked matches 1.. as @p[tag=Abian] at @s run function kits:char/abian/combo_meter/charge/normal

# FX
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.2 5 force
playsound entity.player.hurt_sweet_berry_bush neutral @a[distance=..20] ~ ~ ~ 1 0 1
