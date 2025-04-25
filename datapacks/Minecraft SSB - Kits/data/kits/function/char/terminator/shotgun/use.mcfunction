### When Using SPAS-12
## Shotgun
execute if entity @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.ability1CD=20..}] as @s[scores={kits.timer=1..}] run function kits:char/terminator/shotgun/shoot/use
#execute if entity @s[scores={kits.timer=..0}] run function kits:char/terminator/shotgun/shoot/reloading

## Fast Forward
execute if entity @s[scores={kits.criterion.shift=1..}] as @s[scores={kits.ability3CD=200..}] as @s[scores={kits.ability4CD=10..}] run function kits:char/terminator/shotgun/dash/use
