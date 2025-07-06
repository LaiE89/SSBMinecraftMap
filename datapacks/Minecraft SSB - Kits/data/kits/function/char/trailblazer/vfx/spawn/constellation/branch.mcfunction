# Finds Random Direction for New Branch
particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~ ~ 0 0 0 0 1 force
execute if score @s kits.raycastTick2 matches 1 if score @s kits.raycastTick3 matches 1.. run function kits:char/trailblazer/vfx/spawn/constellation/start
scoreboard players remove @s kits.raycastTick2 1
execute store result entity @s Rotation[0] float 1 run random value -180..180
execute store result entity @s Rotation[1] float 1 run random value -90..90
execute rotated as @s run function kits:char/trailblazer/vfx/spawn/constellation/new
