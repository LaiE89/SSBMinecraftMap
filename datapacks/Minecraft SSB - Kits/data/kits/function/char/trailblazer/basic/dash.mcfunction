# Trailblazer Dashes Forward
scoreboard players remove @s kits.raycastTick 1
execute if entity @e[distance=..2.5,tag=!Trailblazer,tag=!InLabyrinth,type=!#kits:non_entity] run scoreboard players set @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 0
execute if score @s kits.raycastTick matches 0 run tp @s ^ ^ ^-1
execute if score @s kits.raycastTick matches 1 run tp @s ^ ^ ^
execute if score @s kits.raycastTick matches 2.. positioned ^ ^ ^0.5 rotated ~ 0 run function kits:char/trailblazer/basic/dash
