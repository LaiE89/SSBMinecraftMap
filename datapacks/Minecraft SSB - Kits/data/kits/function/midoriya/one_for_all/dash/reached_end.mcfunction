## Execute at Midoriya Upon Reaching Dash End Marker
# Stops dashing
tag @s remove Midoriya100Dashing
tag @s remove MidoriyaDashing

# Allows collided enemies to be collided again
tag @e[tag=Midoriya100DashCollided] remove Midoriya100DashCollided

# Kills dash end marker
kill @e[limit=1,sort=nearest,tag=MidoriyaDashEndMarker,type=area_effect_cloud]
