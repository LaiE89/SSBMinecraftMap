scoreboard players operation @p[tag=Sekiro] kits.timer8 = @p[tag=Sekiro] kits.criterion.block
execute if score @s kits.specific.sekiroPosture matches 100.. run function kits:char/sekiro/posture/posturebreak
scoreboard players operation @p[tag=Sekiro] kits.timer8 /= @p[tag=Sekiro] kits.timer7
scoreboard players operation @s[tag=!SekiroPostureBroken] kits.specific.sekiroPosture += @p[tag=Sekiro] kits.timer8
scoreboard players set @s[scores={kits.specific.sekiroPosture=101..}] kits.specific.sekiroPosture 100

scoreboard players set @s kits.specific.sekiroPostureTimer 50