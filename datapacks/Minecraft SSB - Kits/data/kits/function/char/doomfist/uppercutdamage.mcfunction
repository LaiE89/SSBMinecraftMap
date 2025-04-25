effect give @s minecraft:slow_falling 1 0 true
damage @s 6 bypass:player_attack by @p[tag=Doomfist]
execute as @p[tag=Doomfist] at @s run function kits:char/doomfist/bestdefense
scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~1 ~ run function kits:char/doomfist/doomfistpassive3
