scoreboard players set @s kits.timer6 3
scoreboard players operation @s kits.timer8 = @s kits.criterion.damage
execute if score @s kits.specific.sekiroPosture matches 100.. run function kits:char/sekiro/posture/posturebreak
scoreboard players operation @s[tag=!SekiroPostureBroken] kits.timer8 /= @s kits.timer6
scoreboard players operation @s[tag=!SekiroPostureBroken] kits.specific.sekiroPosture += @s kits.timer8
scoreboard players set @s[scores={kits.specific.sekiroPosture=101..}] kits.specific.sekiroPosture 100

scoreboard players set @s kits.specific.sekiroPostureTimer 30
