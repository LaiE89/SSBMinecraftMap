scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222

execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run tp @e[tag=DoomslayerShotgunned] ^ ^ ^-1
execute if entity @s[scores={RaycastTimer=31}] run tp @e[tag=DoomslayerShotgunned] ^ ^ ^

execute as @s[scores={RaycastTimer=..30}] positioned ^ ^ ^0.5 run function datapack:doomslayer_functions/doomslayerpassive4