#execute positioned ~ ~3 ~ unless entity @e[type=minecraft:text_display,distance=..2,tag=SekiroPostureMeter,limit=1,sort=nearest] run summon text_display ~ ~3 ~ {Tags:["SekiroPostureMeter"],billboard:"center",text:["Posture: ",{"score":{"name":"@e[type=!#kits:non_entity,tag=!Invincible,tag=!Sekiro,tag=!InLabyrinth,sort=nearest,limit=1]","objective":"kits.specific.sekiroPosture"}}]}
#tp @e[type=minecraft:text_display,tag=SekiroPostureMeter,limit=1,sort=nearest] ~ ~3 ~

execute unless score @s kits.specific.sekiroPosture matches 0..100 run scoreboard players set @s kits.specific.sekiroPosture 0
execute if score @s kits.specific.sekiroPosture matches 1.. unless score @s kits.specific.sekiroPostureTimer matches 1.. run scoreboard players remove @s kits.specific.sekiroPosture 1
execute if score @s kits.specific.sekiroPostureTimer matches 1.. run scoreboard players remove @s kits.specific.sekiroPostureTimer 1