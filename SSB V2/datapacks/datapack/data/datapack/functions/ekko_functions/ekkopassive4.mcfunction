scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222

execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run summon area_effect_cloud ^ ^ ^-1 {Tags:["ekkodive"],Duration:10}
execute if entity @s[scores={RaycastTimer=15}] run summon area_effect_cloud ^ ^ ^ {Tags:["ekkodive"],Duration:10}

execute as @s[scores={RaycastTimer=..14}] rotated ~ 0 positioned ^ ^ ^0.5 run function datapack:ekko_functions/ekkopassive4