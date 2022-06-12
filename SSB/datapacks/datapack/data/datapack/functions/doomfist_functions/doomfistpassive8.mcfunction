scoreboard players add @s RaycastTimer3 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer3 2222

execute as @s[scores={RaycastTimer3=2222}] run summon area_effect_cloud ~ ~ ~ {Tags:["rocketpunch"],Duration:40}
execute as @s[scores={RaycastTimer3=15}] run summon area_effect_cloud ~ ~ ~ {Tags:["rocketpunch"],Duration:40}
execute as @s[scores={RaycastTimer3=..14}] rotated ~ 0 positioned ^ ^ ^0.5 run function datapack:doomfist_functions/doomfistpassive8