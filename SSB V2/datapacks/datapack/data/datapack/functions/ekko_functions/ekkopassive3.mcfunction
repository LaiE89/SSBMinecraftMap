scoreboard players add @s RaycastTimer3 1
execute unless block ~ ~ ~ minecraft:air run scoreboard players set @s RaycastTimer3 2222
execute as @s[scores={RaycastTimer3=2222..}] positioned ^ ^ ^ run summon armor_stand ~ ~1 ~ {Tags:["convergence"],Invisible:1,Invulnerable:1}
execute as @s[scores={RaycastTimer3=..1111}] positioned ^ ^ ^0.5 run function datapack:ekko_functions/ekkopassive3