scoreboard players add @s RaycastTimer2 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer2 2222

execute as @s[scores={RaycastTimer2=2222..}] positioned ^ ^ ^ run tp @s ^ ^ ^-1
execute if entity @s[scores={RaycastTimer2=20}] run tp @s ^ ^ ^

execute as @s[scores={RaycastTimer2=..19}] positioned ^ ^ ^0.5 run function datapack:luffy_functions/luffypassive7