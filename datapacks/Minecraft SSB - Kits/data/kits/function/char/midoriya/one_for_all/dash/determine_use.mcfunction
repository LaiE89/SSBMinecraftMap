# Determines if Midoriya Uses Dash 45% or 100%
execute if entity @s[scores={kits.timer=100}] run function kits:char/midoriya/one_for_all/dash/100/use
execute unless entity @s[scores={kits.timer=100}] run function kits:char/midoriya/one_for_all/dash/use
