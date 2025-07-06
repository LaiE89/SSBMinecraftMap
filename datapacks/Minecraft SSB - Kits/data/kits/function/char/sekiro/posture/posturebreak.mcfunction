effect give @s minecraft:weakness 2 9 true
effect give @s minecraft:slowness 2 3 true
effect give @s minecraft:mining_fatigue 2 9 true
scoreboard players set @s kits.specific.sekiroPosture 0

playsound minecraft:item.shield.break neutral @a[distance=..30] ~ ~ ~ 10 0 1
playsound minecraft:entity.player.attack.strong neutral @a[distance=..30] ~ ~ ~ 10 0 1
particle minecraft:crit ~ ~1 ~ 0.4 0.4 0.4 0.5 50 force

tag @s add SekiroPostureBroken

execute if entity @s[tag=Sekiro,tag=SekiroMortalDraw] run function kits:char/sekiro/mortaldraw/reset
execute if entity @s[tag=Sekiro] run function kits:char/sekiro/disabledeflect
execute if entity @s[tag=!Sekiro] run schedule function kits:char/sekiro/posture/posturerecover 2s replace
execute if entity @s[tag=Sekiro] run schedule function kits:char/sekiro/posture/posturerecoversekiro 2s replace