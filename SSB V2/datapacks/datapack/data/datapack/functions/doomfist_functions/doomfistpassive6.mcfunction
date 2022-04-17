scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222

execute as @s[scores={RaycastTimer=2222}] run summon area_effect_cloud ~ ~ ~ {Tags:["rocketpunch"],Duration:40}
execute as @s[scores={RaycastTimer=43}] run summon area_effect_cloud ~ ~ ~ {Tags:["rocketpunch"],Duration:40}
execute as @s[scores={RaycastTimer=..42}] rotated ~ 0 positioned ^ ^ ^0.5 run function datapack:doomfist_functions/doomfistpassive6