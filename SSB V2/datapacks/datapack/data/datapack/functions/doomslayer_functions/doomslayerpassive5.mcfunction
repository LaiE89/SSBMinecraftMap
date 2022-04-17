scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222

execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run tp @e[tag=DoomslayerShotgunned2] ^ ^ ^1
execute if entity @s[scores={RaycastTimer=21}] run tp @e[tag=DoomslayerShotgunned2] ^ ^ ^

execute as @s[scores={RaycastTimer=..20}] positioned ^ ^ ^-0.5 run function datapack:doomslayer_functions/doomslayerpassive5