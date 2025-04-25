## When Energy Focus is Used
# Determines if midoriya uses full cowl 45% or 100%
execute if entity @s[scores={kits.timer=100}] run function kits:char/midoriya/full_cowl/energy_focus/45percent/use
execute unless entity @s[scores={kits.timer=100}] run function kits:char/midoriya/full_cowl/energy_focus/100percent/use

# Resets ability cooldown
scoreboard players set @s kits.ability4CD 0
