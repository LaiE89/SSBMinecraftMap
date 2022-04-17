data modify entity @s Age set value 9
execute if entity @e[tag=DoomslayerShotgunned] as @p[tag=Doomslayer] at @s run scoreboard players set @s RaycastTimer 0
execute if entity @e[tag=DoomslayerShotgunned] as @p[tag=Doomslayer] at @s positioned ~ ~1.5 ~ run function datapack:doomslayer_functions/doomslayerpassive4

execute if entity @e[tag=DoomslayerShotgunned2] run scoreboard players set @s RaycastTimer 0
execute if entity @e[tag=DoomslayerShotgunned2] at @s positioned ~ ~1.5 ~ run function datapack:doomslayer_functions/doomslayerpassive5

tag @e[tag=DoomslayerShotgunned] remove DoomslayerShotgunned
tag @e[tag=DoomslayerShotgunned2] remove DoomslayerShotgunned2
