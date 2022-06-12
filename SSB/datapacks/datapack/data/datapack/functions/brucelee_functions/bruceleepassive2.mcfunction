scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222
execute as @s[scores={RaycastTimer=2222}] run summon area_effect_cloud ^ ^ ^-1 {Tags:["BruceMarker"],Duration:700}

execute as @s[scores={RaycastTimer=15}] run summon area_effect_cloud ^ ^ ^ {Tags:["BruceMarker"],Duration:700}
execute as @s[scores={RaycastTimer=..14}] rotated ~ 0 positioned ^ ^ ^0.5 run function datapack:brucelee_functions/bruceleepassive2
