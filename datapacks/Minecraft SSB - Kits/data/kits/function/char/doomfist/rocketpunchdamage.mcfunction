execute if entity @p[tag=Doomfist,tag=!DoomfistMax] run damage @s 6 bypass:player_attack by @p[tag=Doomfist]
execute if entity @p[tag=Doomfist,tag=!DoomfistMax] as @p[tag=Doomfist] at @s run function kits:char/doomfist/bestdefense

execute if entity @p[tag=Doomfist,tag=DoomfistMax] run damage @s 12 bypass:player_attack by @p[tag=Doomfist]
execute if entity @p[tag=Doomfist,tag=DoomfistMax] as @p[tag=Doomfist] at @s run function kits:char/doomfist/bestdefense

tag @s add DoomfistKB

scoreboard players set @p[tag=Doomfist] kits.raycastTick4 0
execute as @p[tag=Doomfist] at @s positioned ~ ~0.5 ~ run function kits:char/doomfist/doomfistpassive9

tag @s remove DoomfistKB

kill @e[type=armor_stand,tag=rocketpunch]
tag @p[tag=Doomfist] remove DoomfistMax
tag @p[tag=Doomfist] remove DoomfistPunching
