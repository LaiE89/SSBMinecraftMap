# Expands Constellation Branch
particle dust{color:[0.000,0.502,1.000],scale:0.5} ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove @s kits.raycastTick 1
execute if score @s kits.raycastTick matches 1 if score @s kits.raycastTick2 matches 1.. positioned ^ ^ ^0.5 run function kits:char/trailblazer/vfx/spawn/constellation/branch
execute if score @s kits.raycastTick matches 1.. positioned ^ ^ ^0.5 run function kits:char/trailblazer/vfx/spawn/constellation/expand
