## Execute at Enemies Hit by Rise
# Damage
damage @s 6 bypass:player_attack by @p[tag=Abian]

# Combo meter
execute as @p[tag=Abian] at @s run function kits:abian/combo_meter/charge/normal
execute if score @s kits.specific.abianMarked matches 1.. as @p[tag=Abian] at @s run function kits:abian/combo_meter/charge/normal

# FX
particle flash ~ ~ ~ 0 0 0 0 1 force
playsound block.beacon.power_select neutral @a[distance=..20] ~ ~ ~ 1 2 1
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 1 0 1

# Teleports upwards
effect give @s levitation 1 0 true
scoreboard players set @s kits.specific.abiankits.raycastTick 0
function kits:abian/moves/rise/lift
