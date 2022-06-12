scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222

execute as @s[scores={RaycastTimer=2222..}] run summon area_effect_cloud ~ ~ ~ {Tags:["LucinaDestination"],Duration:40}
execute if entity @s[scores={RaycastTimer=41}] run summon area_effect_cloud ~ ~ ~ {Tags:["LucinaDestination"],Duration:40}

execute as @s[scores={RaycastTimer=..40}] positioned ^ ^ ^0.5 run function datapack:lucina_functions/lucinapassive3