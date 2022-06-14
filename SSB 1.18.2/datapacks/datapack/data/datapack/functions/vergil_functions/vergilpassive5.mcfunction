scoreboard players add @s RaycastTimer2 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer2 2222

#execute as @s[scores={RaycastTimer2=2222..}] run tp @s ^ ^ ^2
execute as @s[scores={RaycastTimer2=2222..}] run scoreboard players set @s Timer 5

execute as @s[scores={RaycastTimer2=..7}] positioned ^ ^ ^-0.5 run function datapack:vergil_functions/vergilpassive5