## Velocity Passive
# Resets dash cooldown
scoreboard players set @s kits.ability1CD 98

# Reduces charge cooldown
execute unless entity @s[scores={kits.timer3=3..}] run scoreboard players add @s kits.ability2CD 100

# Stockpiles power into fist
execute unless entity @s[scores={kits.timer4=100..}] run function kits:char/midoriya/full_cowl/energy_accumulation/quick_charge
