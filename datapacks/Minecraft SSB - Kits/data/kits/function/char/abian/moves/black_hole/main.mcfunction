## Execute at Black Hole
# kits.timer for a sequence of events
scoreboard players add @s kits.timer 1
execute if score @s kits.timer matches ..5 run function kits:char/abian/moves/black_hole/traveling
execute if score @s kits.timer matches 6 run function kits:char/abian/moves/black_hole/explode
execute if score @s kits.timer matches 6.. run function kits:char/abian/moves/black_hole/stationary
