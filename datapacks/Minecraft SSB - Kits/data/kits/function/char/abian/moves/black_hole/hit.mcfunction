## Execute at Enemies Hit by Black Hole
# Damage
damage @s 0.1 bypass:player_attack_no_kb by @e[type=area_effect_cloud,tag=AbianBlackHole,limit=1,sort=nearest] from @p[tag=Abian]

# Combo stun
scoreboard players set @s kits.specific.abianComboStun 10

# Combo meter
execute as @p[tag=Abian] at @s run function kits:char/abian/combo_meter/charge/weak
execute if score @s kits.specific.abianMarked matches 1.. as @p[tag=Abian] at @s run function kits:char/abian/combo_meter/charge/weak

# FX
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.2 2 force
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 0.1 2 0.1

# Hit indicator
tag @s add AbianBlackHoleHit
