particle minecraft:flash ^ ^1 ^1 0 0 0 0 1 force

scoreboard players set @s kits.timer7 7
execute on attacker run function kits:char/sekiro/posture/posturegaindeflect

#kill @e[tag=projectile,distance=..3]

execute if score @s kits.specific.sekiroPosture matches 100.. run function kits:char/sekiro/posture/posturebreak

scoreboard players set @s[tag=!SekiroPostureBroken] kits.timer6 5
scoreboard players operation @s[tag=!SekiroPostureBroken] kits.criterion.block /= @s kits.timer6
scoreboard players operation @s[tag=!SekiroPostureBroken] kits.specific.sekiroPosture += @s kits.criterion.block
scoreboard players set @s[scores={kits.specific.sekiroPosture=101..}] kits.specific.sekiroPosture 100
scoreboard players set @s kits.specific.sekiroPostureTimer 30
