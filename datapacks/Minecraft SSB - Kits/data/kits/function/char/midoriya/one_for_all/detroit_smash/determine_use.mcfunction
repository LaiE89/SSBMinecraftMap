# Determines if Midoriya Uses Detroit Smash 45% or 100%
execute if entity @s[scores={kits.timer=100}] run function kits:char/midoriya/one_for_all/detroit_smash/100/use
execute unless entity @s[scores={kits.timer=100}] run function kits:char/midoriya/one_for_all/detroit_smash/use
