execute if entity @p[tag=Doomfist,tag=!DoomfistMax] run function datapack:damage1
execute if entity @p[tag=Doomfist,tag=!DoomfistMax] run effect give @p[tag=Doomfist] minecraft:absorption 1 0 true

execute if entity @p[tag=Doomfist,tag=DoomfistMax] run function datapack:damage2
execute if entity @p[tag=Doomfist,tag=DoomfistMax] run effect give @p[tag=Doomfist] minecraft:absorption 1 1 true

tag @s add DoomfistKB

scoreboard players set @p[tag=Doomfist] RaycastTimer4 0
execute as @p[tag=Doomfist] at @s positioned ~ ~0.5 ~ run function datapack:doomfist_functions/doomfistpassive9

tag @s remove DoomfistKB

kill @e[type=armor_stand,tag=rocketpunch]
tag @p[tag=Doomfist] remove DoomfistMax
tag @p[tag=Doomfist] remove DoomfistPunching