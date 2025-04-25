## Every Time Midoriya Attacks
# Determines if midoriya with 100% power stored uses detroit smash 45% or 100%
execute if entity @s[scores={kits.timer4=100..}] run function kits:char/midoriya/one_for_all/detroit_smash/determine_use

# Midoriya uses detroit smash 45% on default at 100% full cowl
execute unless entity @s[scores={kits.timer4=100..}] if entity @s[scores={kits.timer=100}] run function kits:char/midoriya/one_for_all/detroit_smash/default_use

# Velocity passive
function kits:char/midoriya/velocity
