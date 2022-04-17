scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ minecraft:air run scoreboard players set @s RaycastTimer 2222
execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~ {Tags:["GenjiStrike"],Duration:40}
execute if entity @s[scores={RaycastTimer=40}] run summon area_effect_cloud ~ ~ ~ {Tags:["GenjiStrike"],Duration:40}
execute as @s[scores={RaycastTimer=..39}] positioned ^ ^ ^0.5 run function datapack:genji_functions/genjipassive2