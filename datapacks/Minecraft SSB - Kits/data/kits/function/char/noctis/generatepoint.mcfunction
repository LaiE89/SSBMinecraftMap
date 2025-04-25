#kill @e[type=area_effect_cloud,tag=NoctisPoint]
execute store result score @s kits.timer5 run execute if entity @e[type=area_effect_cloud,tag=NoctisPoint]
execute if score @s kits.timer5 matches 2.. run kill @e[type=area_effect_cloud,tag=NoctisPoint,limit=1,sort=furthest]
execute store result score @s kits.timer4 run random value 1..100

scoreboard players set @s kits.raycastTick 0
execute if score @s kits.timer4 matches 1..25 rotated ~50 ~ run function kits:char/noctis/summonpoint
execute if score @s kits.timer4 matches 26..50 rotated ~35 ~ run function kits:char/noctis/summonpoint
execute if score @s kits.timer4 matches 51..75 rotated ~-35 ~ run function kits:char/noctis/summonpoint
execute if score @s kits.timer4 matches 76..100 rotated ~-50 ~ run function kits:char/noctis/summonpoint
