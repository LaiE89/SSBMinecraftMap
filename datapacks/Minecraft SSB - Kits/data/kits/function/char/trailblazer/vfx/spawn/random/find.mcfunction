# Finds Random Spawn Position
scoreboard players remove @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 0
execute if score @s kits.raycastTick matches ..1 run function kits:char/trailblazer/vfx/spawn/random/end
execute if score @s kits.raycastTick matches 2.. positioned ^ ^ ^0.5 run function kits:char/trailblazer/vfx/spawn/random/find
