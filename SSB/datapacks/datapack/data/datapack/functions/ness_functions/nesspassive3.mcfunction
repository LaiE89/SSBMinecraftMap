scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222

execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run tp @e[tag=NessYoyoKB] ^ ^ ^1
execute if entity @s[scores={RaycastTimer=11}] run tp @e[tag=NessYoyoKB] ^ ^ ^

execute as @s[scores={RaycastTimer=..10}] positioned ^ ^ ^-0.5 run function datapack:ness_functions/nesspassive3