execute unless score @s kits.specific.sekiroPosture matches 0..100 run scoreboard players set @s kits.specific.sekiroPosture 0
execute if entity @s[tag=SekiroPostureBroken] as @p[tag=Sekiro] at @s run function kits:char/sekiro/actionbar/enemyposturebroken
execute if entity @s[tag=!SekiroPostureBroken] as @p[tag=Sekiro] at @s run function kits:char/sekiro/actionbar/enemynoposturebroken