particle minecraft:flash ^ ^1 ^1 0 0 0 0 1 force

execute on attacker run function kits:char/sekiro/posture/posturegain {Posture:10}

execute if score @s kits.specific.sekiroPosture matches 100.. run function kits:char/sekiro/posture/posturebreak

scoreboard players operation @s[tag=!SekiroPostureBroken] kits.criterion.block /= @s kits.timer2
scoreboard players operation @s[tag=!SekiroPostureBroken] kits.specific.sekiroPosture += @s kits.criterion.block
scoreboard players set @s[scores={kits.specific.sekiroPosture=101..}] kits.specific.sekiroPosture 100
scoreboard players set @s kits.specific.sekiroPostureTimer 30
