scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222
execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^-1 run summon area_effect_cloud ~ ~ ~ {Tags:["GiantDadRoll"],Duration:20}
execute if entity @s[scores={RaycastTimer=17}] run summon area_effect_cloud ~ ~ ~ {Tags:["GiantDadRoll"],Duration:20}

execute as @s[scores={RaycastTimer=..16}] rotated ~ 0 positioned ^ ^ ^0.5 run function datapack:labyrinth_functions/labyrinthmobabilities/prison/giantdadraycast