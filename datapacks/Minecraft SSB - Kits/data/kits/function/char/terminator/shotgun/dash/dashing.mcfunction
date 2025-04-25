## Execute at Terminator While Facing Toward Dash End Marker
# Movement
tp @s ^ ^ ^1

# Dash trail animation
scoreboard players add @s kits.timer2 1
execute positioned ~ ~1 ~ rotated ~ 0 run function kits:char/terminator/shotgun/dash/animation/score_tree/root
