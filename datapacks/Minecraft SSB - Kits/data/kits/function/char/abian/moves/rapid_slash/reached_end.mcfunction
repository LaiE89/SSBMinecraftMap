## Execute at RS Travel Marker Upon Reaching RS End Marker
# Removes input restrictions
schedule clear kits:char/abian/inputs/reset/global/delay
tag @p[tag=Abian] remove AbianInputsDelay
execute as @e[limit=1,sort=nearest,tag=AbianRslashEndMarker,type=area_effect_cloud] at @s run tp @p[tag=Abian] ~ ~ ~ 

# Kills all necessary elements
kill @e[limit=1,sort=nearest,tag=AbianRslashEndMarker,type=area_effect_cloud]
kill @s
