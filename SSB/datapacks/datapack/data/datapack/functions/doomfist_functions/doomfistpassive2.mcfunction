scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ minecraft:air run scoreboard players set @s RaycastTimer 2222
execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run summon area_effect_cloud ^ ^0.5 ^-2 {Tags:["seismicslam"],Duration:20}
execute if entity @s[scores={RaycastTimer=31}] run summon area_effect_cloud ^ ^ ^ {Tags:["seismicslam"],Duration:20}
execute as @s[scores={RaycastTimer=..30}] positioned ^ ^ ^0.5 run function datapack:doomfist_functions/doomfistpassive2