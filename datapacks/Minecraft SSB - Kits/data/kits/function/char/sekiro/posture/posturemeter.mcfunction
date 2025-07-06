#execute unless score @s kits.specific.sekiroPosture matches 0..100 run scoreboard players set @s kits.specific.sekiroPosture 0
execute if score @s kits.specific.sekiroPosture matches 1.. unless score @s kits.specific.sekiroPostureTimer matches 1.. run scoreboard players remove @s kits.specific.sekiroPosture 1
execute if score @s kits.specific.sekiroPostureTimer matches 1.. run scoreboard players remove @s kits.specific.sekiroPostureTimer 1

execute if entity @s[tag=SekiroPostureBroken] facing entity @p[tag=Sekiro] eyes rotated ~ 0 run particle minecraft:dust{color:[1.000,0.000,0.000],scale:2.0} ^ ^1 ^1 0 0 0 0 1 force
execute if entity @s[type=minecraft:player,tag=SekiroPostureBroken] if score @s kits.criterion.death matches 1.. run tag @s remove SekiroPostureBroken