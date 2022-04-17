scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222

execute as @s[scores={RaycastTimer=2222..}] positioned ~ ~ ~ run tp @s ^ ^-1 ^1.5
execute if entity @s[scores={RaycastTimer=10}] run tp @s ~ ~ ~

execute as @s[scores={RaycastTimer=..9}] positioned ^ ^0.5 ^-1 run function datapack:kaneki_functions/kanekipassive4