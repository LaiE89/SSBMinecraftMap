## Attracts enemies hit by blue
scoreboard players remove @p[tag=Gojo] kits.raycastTick2 1
execute positioned ^ ^ ^0.5 run function kits:char/gojo/utilities/check_block_global
execute if score @p[tag=Gojo] kits.raycastTick2 matches -1 run tp @s ^ ^ ^
execute if score @p[tag=Gojo] kits.raycastTick2 matches 0 run tp @s ^ ^ ^
execute if score @p[tag=Gojo] kits.raycastTick2 matches 1.. positioned ^ ^ ^0.5 run function kits:char/gojo/inherited/blue/attract