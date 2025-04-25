## Combo Meter Strong Increase
# Increases percentage
scoreboard players add @s kits.ability3CD 14
scoreboard players add @s kits.ability4CD 40
scoreboard players set @s[scores={kits.ability3CD=101..}] kits.ability3CD 100

# Enables different passive based on percentage
function kits:char/abian/combo_meter/passive/determine
