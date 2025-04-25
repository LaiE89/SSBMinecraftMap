execute if score @s kits.specific.sekiroPosture matches 100.. run function kits:char/sekiro/posture/posturebreak
$scoreboard players add @s[tag=!SekiroPostureBroken] kits.specific.sekiroPosture $(Posture)
scoreboard players set @s[scores={kits.specific.sekiroPosture=101..}] kits.specific.sekiroPosture 100

scoreboard players set @s kits.specific.sekiroPostureTimer 50