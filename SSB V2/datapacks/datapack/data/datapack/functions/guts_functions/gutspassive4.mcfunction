scoreboard players add @s RaycastTimer3 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer3 2222
execute as @s[scores={RaycastTimer3=2222}] run tp @s ^ ^-1.5 ^2
execute as @s[scores={RaycastTimer3=11}] run tp @s ^ ^ ^
execute as @s[scores={RaycastTimer3=..10}] positioned ^ ^0.3 ^-0.5 run function datapack:guts_functions/gutspassive4