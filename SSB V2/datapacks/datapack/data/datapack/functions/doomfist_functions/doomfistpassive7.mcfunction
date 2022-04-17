scoreboard players add @s RaycastTimer2 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer2 2222

execute as @s[scores={RaycastTimer2=2222}] run summon area_effect_cloud ~ ~ ~ {Tags:["rocketpunch"],Duration:40}
execute as @s[scores={RaycastTimer2=29}] run summon area_effect_cloud ~ ~ ~ {Tags:["rocketpunch"],Duration:40}
execute as @s[scores={RaycastTimer2=..28}] rotated ~ 0 positioned ^ ^ ^0.5 run function datapack:doomfist_functions/doomfistpassive7