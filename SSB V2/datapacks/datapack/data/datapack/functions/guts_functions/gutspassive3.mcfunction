scoreboard players add @s RaycastTimer2 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer2 2222

execute as @s[scores={RaycastTimer2=2222}] as @e[tag=GutsCleaved] at @s run function datapack:guts_functions/cleavedamage2
execute as @s[scores={RaycastTimer2=2222}] run tp @e[tag=GutsCleaved] ^ ^1 ^-1
execute as @s[scores={RaycastTimer2=21}] run tp @e[tag=GutsCleaved] ^ ^ ^
execute as @s[scores={RaycastTimer2=..20}] positioned ^ ^ ^0.5 run function datapack:guts_functions/gutspassive3