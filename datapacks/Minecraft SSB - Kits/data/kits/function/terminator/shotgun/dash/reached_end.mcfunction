## Execute at Terminator Upon Reaching Dash End Marker
# Stops dashing
tag @s remove TerminatorDashing

# Allows collided enemies to be collided again
tag @e[tag=TerminatorDashCollided] remove TerminatorDashCollided

# Kills dash end marker
kill @e[limit=1,sort=nearest,tag=TerminatorDashEndMarker,type=area_effect_cloud]
