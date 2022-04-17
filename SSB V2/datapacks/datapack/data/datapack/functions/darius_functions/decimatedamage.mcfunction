function datapack:damage1
scoreboard players add @s DariusPassive 1
execute if entity @a[tag=DariusRage] if entity @s[scores={DariusPassive=..4}] run scoreboard players set @s DariusPassive 5
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..15] ~ ~ ~ 4 0 1
effect give @p[tag=Darius] instant_health
tag @s add DariusDecimated