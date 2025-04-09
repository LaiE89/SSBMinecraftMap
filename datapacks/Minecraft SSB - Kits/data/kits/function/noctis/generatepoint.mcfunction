kill @e[type=area_effect_cloud,tag=NoctisPoint]
execute store result score @s kits.timer4 run random value 1..100

scoreboard players set @s kits.raycastTick 0
execute if score @s kits.timer4 matches 1..25 rotated ~50 ~ run function kits:noctis/summonpoint
execute if score @s kits.timer4 matches 26..50 rotated ~35 ~ run function kits:noctis/summonpoint
execute if score @s kits.timer4 matches 51..75 rotated ~-35 ~ run function kits:noctis/summonpoint
execute if score @s kits.timer4 matches 76..100 rotated ~-50 ~ run function kits:noctis/summonpoint
