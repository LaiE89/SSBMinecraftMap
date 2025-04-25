tag @p[tag=Darius,tag=!DariusRage] add DariusRage
execute at @s rotated ~ 0 positioned ~ ~3.5 ~ run function kits:char/darius/noxianmightparticles

scoreboard players add @s kits.specific.dariusBleedTime 1
tag @s[scores={kits.specific.dariusBleedTime=150..}] remove DariusNoxianMight
scoreboard players reset @s[scores={kits.specific.dariusBleedTime=150..}] kits.specific.dariusPassive
scoreboard players reset @e[scores={kits.specific.dariusBleedTime=150..}] kits.specific.dariusBleedTime
