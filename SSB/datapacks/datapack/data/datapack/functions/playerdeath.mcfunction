execute as @a at @s if block ~ ~ ~ air run spawnpoint @s ~ ~ ~
gamemode spectator @a[scores={Basic_Death=1..}]
clear @a[scores={Basic_Death=1..},tag=!Player]
scoreboard players add @a[gamemode=spectator] Basic_DeathTime 1
title @a[scores={Basic_Death=1..}] title {"text":"You died","bold":true,"color":"dark_red"}
title @a[scores={Basic_Death=1..}] times 0 40 0

tp @a[gamemode=spectator,tag=!Player,scores={Basic_DeathTime=40..}] -192 72 80 facing -192 73 85
tp @a[gamemode=spectator,tag=Player1,scores={Basic_DeathTime=40..}] -171 116 -58 facing -192 116 -58
tp @a[gamemode=spectator,tag=Player2,scores={Basic_DeathTime=40..}] -214 116 -58 facing -192 116 -58
tp @a[gamemode=spectator,tag=Player3,scores={Basic_DeathTime=40..}] -192 116 -80 facing -192 116 -58
tp @a[gamemode=spectator,tag=Player4,scores={Basic_DeathTime=40..}] -192 116 -37 facing -192 116 -58
gamemode adventure @a[gamemode=spectator,tag=Player,scores={Basic_DeathTime=40..}]
scoreboard players reset @a[tag=Player,scores={Basic_DeathTime=40..}] Basic_DeathTime