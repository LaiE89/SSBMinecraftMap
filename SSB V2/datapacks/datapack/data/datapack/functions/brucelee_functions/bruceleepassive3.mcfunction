scoreboard players add @s RaycastTimer2 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer2 2222
execute as @s[scores={RaycastTimer2=2222}] positioned ^ ^ ^ run summon area_effect_cloud ^ ^ ^ {Tags:["BruceleeKick"],Duration:60}
execute as @s[scores={RaycastTimer2=61}] positioned ^ ^ ^ run summon area_effect_cloud ^ ^ ^ {Tags:["BruceleeKick"],Duration:60}
execute as @s[scores={RaycastTimer2=..60}] rotated ~ 0 positioned ^ ^ ^0.5 run function datapack:brucelee_functions/bruceleepassive3
