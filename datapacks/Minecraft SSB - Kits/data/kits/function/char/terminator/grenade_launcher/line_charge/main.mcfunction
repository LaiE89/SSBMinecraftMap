## Execute at Line Charge Grenade
# kits.timer for a sequence of events
scoreboard players add @s kits.timer 1

# While traveling in launching trajectory
execute if score @s kits.timer matches 2..14 run function kits:char/terminator/grenade_launcher/line_charge/traveling

# When detonating
execute if score @s kits.timer matches 15..44 run function kits:char/terminator/grenade_launcher/line_charge/detonating

# Upon detonation
execute if score @s kits.timer matches 45.. run function kits:char/terminator/grenade_launcher/line_charge/detonated

# Duration until grenade automatically disappears
kill @s[scores={kits.timer=70..}]
