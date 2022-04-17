scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222

execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run tp @s ^ ^ ^-1
execute as @s[scores={RaycastTimer=10}] positioned ^ ^ ^ run tp @s ~ ~ ~

execute as @s[scores={RaycastTimer=..9}] rotated ~ 0 positioned ^ ^ ^0.5 run function datapack:kiryu_functions/kiryupassive3