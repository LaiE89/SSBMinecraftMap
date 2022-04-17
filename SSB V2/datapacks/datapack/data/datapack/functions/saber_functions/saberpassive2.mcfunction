scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222

execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run tp @s ^ ^ ^-1
execute if entity @s[scores={RaycastTimer=8}] run tp @s ^ ^ ^

execute as @s[scores={RaycastTimer=..7}] positioned ^ ^ ^0.5 run function datapack:saber_functions/saberpassive2