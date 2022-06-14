effect give @s minecraft:slow_falling 1 0 true
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 2 2 1
scoreboard players set @s RaycastTimer 0
execute at @s positioned ~ ~1.5 ~ run function datapack:genji_functions/genjipassive2
scoreboard players set @s Ability2CD 0
execute if entity @e[type=minecraft:area_effect_cloud,tag=GenjiStrike,distance=..3] run function datapack:genji_functions/swiftstrikeend