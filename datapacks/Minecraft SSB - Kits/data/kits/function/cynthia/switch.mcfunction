particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
particle flash ~ ~1 ~ 0 0 0 0 10 force
effect give @s minecraft:weakness 1 9 true
effect give @s minecraft:mining_fatigue 1 9 true
effect give @s minecraft:blindness 1 0 true
effect clear @s minecraft:regeneration
scoreboard players set @s kits.timer8 0
tag @s add CynthiaJustSwitched
playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 10 1.75 1
execute if entity @s[tag=Garchomp,tag=!CynthiaSwitched] run function kits:cynthia/lucario
execute if entity @s[tag=Lucario,tag=!CynthiaSwitched] run function kits:cynthia/roserade
execute if entity @s[tag=Roserade,tag=!CynthiaSwitched] run function kits:cynthia/garchomp

tag @s remove CynthiaSwitched
