## When Using M79 Grenade Launcher
# Line charge
execute if entity @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.ability5CD=200..}] run function kits:char/terminator/grenade_launcher/line_charge/use

# Hasta la vista
execute if entity @s[scores={kits.criterion.shift=1..}] as @s[scores={kits.timer3=100..}] run function kits:char/terminator/grenade_launcher/hasta_la_vista/use
