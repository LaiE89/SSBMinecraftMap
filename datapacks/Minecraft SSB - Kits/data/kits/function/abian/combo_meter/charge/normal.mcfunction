## Combo Meter force Increase
# Increases percentage
scoreboard players add @s kits.ability3CD 7
scoreboard players add @s kits.ability4CD 20
scoreboard players set @s[scores={kits.ability3CD=101..}] kits.ability3CD 100

# Enables different passive based on percentage
function kits:abian/combo_meter/passive/determine
