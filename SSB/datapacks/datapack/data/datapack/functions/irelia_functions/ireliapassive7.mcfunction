scoreboard players add @s RaycastTimer2 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer2 2222

execute as @s[scores={RaycastTimer2=2222..}] positioned ^ ^ ^ run summon area_effect_cloud ^ ^ ^ {Tags:["BladeSurgeDash"],Radius:0.5,Duration:30}
execute if entity @s[scores={RaycastTimer2=12}] run summon area_effect_cloud ^ ^ ^ {Tags:["BladeSurgeDash"],Radius:0.5,Duration:30}

execute as @s[scores={RaycastTimer2=..11}] positioned ^ ^ ^0.5 run function datapack:irelia_functions/ireliapassive7