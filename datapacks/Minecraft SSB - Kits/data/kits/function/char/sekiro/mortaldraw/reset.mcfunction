tag @s[tag=SekiroMortalDraw] remove SekiroMortalDraw
scoreboard players set @s kits.ability1CD 0
scoreboard players reset @s kits.criterion.shiftOn

execute if entity @p[tag=Sekiro,tag=!SekiroPostureBroken] run function kits:char/sekiro/enabledeflect