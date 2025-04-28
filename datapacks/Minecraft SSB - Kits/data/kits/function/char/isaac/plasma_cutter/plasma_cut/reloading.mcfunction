## When Isaac is Reloading
# Reload time
scoreboard players add @s kits.ability2CD 1

# Upon reload
execute if score @s kits.ability2CD matches 1 run function kits:char/isaac/plasma_cutter/plasma_cut/reload

# After reload
execute if score @s kits.ability2CD matches 30.. run function kits:char/isaac/plasma_cutter/plasma_cut/reloaded
