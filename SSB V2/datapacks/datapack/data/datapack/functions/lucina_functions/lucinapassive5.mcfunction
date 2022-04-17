scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222

execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run tp @e[tag=LucinaDolphinSlashed] ^ ^-1 ^-1
execute if entity @s[scores={RaycastTimer=15}] run tp @e[tag=LucinaDolphinSlashed] ^ ^ ^

execute as @s[scores={RaycastTimer=..14}] rotated ~ 0 positioned ^ ^ ^0.5 run function datapack:lucina_functions/lucinapassive5