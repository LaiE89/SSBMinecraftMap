scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222

execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run tp @e[tag=SpawnChainsKB] ^ ^ ^-1
execute if entity @s[scores={RaycastTimer=11}] run tp @e[tag=SpawnChainsKB] ^ ^ ^

execute as @s[scores={RaycastTimer=..10}] positioned ^ ^ ^0.5 run function datapack:spawn_functions/spawnpassive4