scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222
execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run summon area_effect_cloud ^ ^ ^-2 {Tags:["CinderThrust"],Duration:20}
execute if entity @s[scores={RaycastTimer=60}] run summon area_effect_cloud ~ ~ ~ {Tags:["CinderThrust"],Duration:20}
execute as @s[scores={RaycastTimer=..59}] positioned ^ ^ ^0.5 run function datapack:labyrinth_functions/labyrinthbosses/cinders/thrustraycast