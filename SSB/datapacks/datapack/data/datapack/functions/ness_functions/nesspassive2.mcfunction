scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ minecraft:air run scoreboard players set @s RaycastTimer 2222
execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run summon area_effect_cloud ^ ^ ^-1 {Tags:["pkrocketplace"],Duration:20}
execute if entity @s[scores={RaycastTimer=51}] run summon area_effect_cloud ^ ^ ^ {Tags:["pkrocketplace"],Duration:20}
execute as @s[scores={RaycastTimer=..50}] positioned ^ ^ ^0.5 run function datapack:ness_functions/nesspassive2