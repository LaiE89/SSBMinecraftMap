## Labyrinth Shop Delayed Damage
# Damage
execute if score @s kits.specific.abianMarked matches 1.. run damage @s 6 bypass:player_attack by @p[tag=Abian]
damage @s 6 bypass:player_attack by @p[tag=Abian]

# Combo meter
execute as @p[tag=Abian] at @s run function kits:char/abian/combo_meter/charge/strong

# FX
particle item{item:"bone"} ~ ~1 ~ 0 0 0 0.2 20 force
particle item{item:"nether_wart_block"} ~ ~1 ~ 0 0 0 0.2 30 force
playsound entity.zombie.break_wooden_door neutral @a[distance=..20] ~ ~ ~ 0.5 0 1

# Resets hit indicator
tag @s remove AbianLabyrinthShopHit
