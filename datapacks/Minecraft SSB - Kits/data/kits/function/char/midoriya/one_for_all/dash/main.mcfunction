## Execute at Midoriya When Dashing
# Launches nearby enemies upwards if midoriya uses dash 100%
execute if entity @s[tag=Midoriya100Dashing] as @e[distance=..2,limit=1,sort=nearest,tag=!Midoriya,tag=!Midoriya100DashCollided,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:char/midoriya/one_for_all/dash/100/hit

# Stops dashing if near dash end marker
execute if entity @e[distance=..1.5,limit=1,sort=nearest,tag=MidoriyaDashEndMarker,type=area_effect_cloud] run function kits:char/midoriya/one_for_all/dash/reached_end

# Dash towards dash end marker
execute facing entity @e[limit=1,sort=nearest,tag=MidoriyaDashEndMarker,type=area_effect_cloud] eyes run tp @s ^ ^ ^1.5

# Particles
particle dust{color:[0.000,1.000,0.910],scale:0.5} ~ ~1 ~ 0 0.5 0 0 20 force
