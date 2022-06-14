scoreboard players add @s RaycastTimer2 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer2 2222
particle minecraft:dust 0 1 1 1 ~ ~ ~ 0.4 0.5 0.4 0 10
execute as @s[scores={RaycastTimer2=2222..}] positioned ^ ^ ^ run tp @s ^ ^ ^-1
execute if entity @s[scores={RaycastTimer2=10}] run tp @s ^ ^ ^

execute as @s[scores={RaycastTimer2=..9}] positioned ^ ^ ^0.5 run function datapack:tracer_functions/tracerpassive3