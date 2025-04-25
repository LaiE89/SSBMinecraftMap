# Expands Lightning Branch
particle dust{color:[0.000,0.000,0.000],scale:1} ~ ~ ~ 0 0 0 0 1 force
particle dust{color:[1.000,0.000,0.000],scale:1.25} ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove @s kits.raycastTick 1
execute if score @s kits.raycastTick matches 1 if score @s kits.raycastTick2 matches 1.. positioned ^ ^ ^0.5 run function kits:char/itadori/vfx/animations/lightning/branch
execute if score @s kits.raycastTick matches 1.. positioned ^ ^ ^0.5 run function kits:char/itadori/vfx/animations/lightning/expand
