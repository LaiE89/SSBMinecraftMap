execute unless entity @p[tag=Darius,tag=DariusRage] run scoreboard players add @s kits.specific.dariusPassive 1
execute if entity @p[tag=Darius,tag=DariusRage] run scoreboard players set @s[tag=!DariusNoxianMight] kits.specific.dariusPassive 5
tag @s[scores={kits.specific.dariusPassive=5}] add DariusNoxianMight
effect give @s[scores={kits.specific.dariusPassive=5}] minecraft:wither 7 1 true
execute at @s[scores={kits.specific.dariusPassive=5}] run playsound minecraft:entity.elder_guardian.curse neutral @a[distance=..20] ~ ~ ~ 10 0.5 1
scoreboard players set @s[scores={kits.specific.dariusPassive=5}] kits.specific.dariusPassive 6
