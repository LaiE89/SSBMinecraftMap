## Execute at Terminator When Dashing
# Dash towards dash end marker
execute facing entity @e[limit=1,sort=nearest,tag=TerminatorDashEndMarker,type=area_effect_cloud] eyes run function kits:char/terminator/shotgun/dash/dashing

# Collision
execute as @e[distance=..2,limit=1,sort=nearest,tag=!Terminator,tag=!TerminatorDashCollided,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:char/terminator/shotgun/dash/hit

# Stops dashing if near dash end marker
execute if entity @e[distance=..2,limit=1,sort=nearest,tag=TerminatorDashEndMarker,type=area_effect_cloud] run function kits:char/terminator/shotgun/dash/reached_end
