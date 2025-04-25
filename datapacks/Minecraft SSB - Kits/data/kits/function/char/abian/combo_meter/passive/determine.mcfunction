# Enables different passive based on percentage
execute if score @s kits.ability3CD matches 25..49 run function kits:char/abian/combo_meter/passive/powerlvl1
execute if score @s kits.ability3CD matches 50..74 run function kits:char/abian/combo_meter/passive/powerlvl2
execute if score @s kits.ability3CD matches 75..99 run function kits:char/abian/combo_meter/passive/powerlvl3
execute if score @s kits.ability3CD matches 100.. run function kits:char/abian/combo_meter/passive/powerlvl4
