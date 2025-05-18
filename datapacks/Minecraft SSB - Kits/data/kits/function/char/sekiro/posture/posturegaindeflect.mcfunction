scoreboard players reset @p[tag=Sekiro] kits.health2
scoreboard players reset @p[tag=Sekiro] kits.health3
execute store result score @p[tag=Sekiro] kits.health2 run data get entity @s Health
execute store result score @p[tag=Sekiro] kits.health3 run attribute @s max_health get
scoreboard players operation @p[tag=Sekiro] kits.health4 = @p[tag=Sekiro] kits.health3
scoreboard players operation @p[tag=Sekiro] kits.health4 -= @p[tag=Sekiro] kits.health2

# Posture damage based on max health and damage blocked
execute if score @s kits.specific.sekiroPosture matches 100.. run function kits:char/sekiro/posture/posturebreak
scoreboard players set @p[tag=Sekiro] kits.timer9 20
scoreboard players operation @p[tag=Sekiro] kits.timer8 = @p[tag=Sekiro] kits.criterion.block
scoreboard players operation @p[tag=Sekiro] kits.timer8 *= @p[tag=Sekiro] kits.timer9
scoreboard players operation @p[tag=Sekiro] kits.timer8 /= @p[tag=Sekiro] kits.health3
scoreboard players operation @p[tag=Sekiro] kits.timer8 /= @p[tag=Sekiro] kits.timer7
scoreboard players operation @s[tag=!SekiroPostureBroken] kits.specific.sekiroPosture += @p[tag=Sekiro] kits.timer8
scoreboard players set @s[scores={kits.specific.sekiroPosture=101..}] kits.specific.sekiroPosture 100

# Posture timer based on missing health
scoreboard players set @p[tag=Sekiro] kits.timer7 3
scoreboard players operation @p[tag=Sekiro] kits.health4 *= @p[tag=Sekiro] kits.timer7
scoreboard players reset @p[tag=Sekiro] kits.timer7

scoreboard players set @s kits.specific.sekiroPostureTimer 30
scoreboard players operation @s kits.specific.sekiroPostureTimer += @p[tag=Sekiro] kits.health4