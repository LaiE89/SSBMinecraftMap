# Knocks Back Enemies Hit by Basic Attack
scoreboard players remove %TrailblazerKB kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set %TrailblazerKB kits.raycastTick 0
execute if score %TrailblazerKB kits.raycastTick matches 0 run tp @s ^ ^ ^1
execute if score %TrailblazerKB kits.raycastTick matches 1 run tp @s ^ ^ ^
execute if score %TrailblazerKB kits.raycastTick matches 2.. positioned ^ ^ ^-0.5 run function kits:char/trailblazer/basic/kb
