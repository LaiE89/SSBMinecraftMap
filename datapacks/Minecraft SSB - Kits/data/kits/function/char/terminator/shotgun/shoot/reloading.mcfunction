## When Terminator is Reloading
# Reload time
scoreboard players add @s kits.ability2CD 1

# Upon reload
execute if score @s kits.ability2CD matches 1 run function kits:char/terminator/shotgun/shoot/reload

# After reload
execute if score @s[predicate=kits:items/terminator/shotgun,gamemode=!spectator] kits.ability2CD matches 30.. run function kits:char/terminator/shotgun/shoot/reloaded
