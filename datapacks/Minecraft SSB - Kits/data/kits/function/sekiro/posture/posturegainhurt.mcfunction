execute if score @s kits.specific.sekiroPosture matches 100.. run function kits:sekiro/posture/posturebreak
scoreboard players operation @s[tag=!SekiroPostureBroken] kits.criterion.damage /= @s kits.timer2
scoreboard players operation @s[tag=!SekiroPostureBroken] kits.specific.sekiroPosture += @s kits.criterion.damage
scoreboard players set @s[scores={kits.specific.sekiroPosture=101..}] kits.specific.sekiroPosture 100

scoreboard players set @s kits.specific.sekiroPostureTimer 30
