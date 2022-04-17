execute as @a at @s run execute if block ~ ~ ~ air run spawnpoint @s ~ ~ ~
execute as @a[scores={Death=1..}] at @s run gamemode spectator @s
execute as @a[scores={Death=1..},tag=!Player] at @s run clear @s
scoreboard players add @a[gamemode=spectator] DeathCounter 1
execute as @a[scores={Death=1..}] at @s run title @s title {"text":"You died","bold":true,"color":"dark_red"}
execute as @a[scores={Death=1..}] at @s run title @s times 0 40 0

tp @a[gamemode=spectator,tag=!Player,scores={DeathCounter=40..}] -192 72 80 facing -192 73 85
tp @a[gamemode=spectator,tag=Player1,scores={DeathCounter=40..}] -171 116 -58 facing -192 116 -58
tp @a[gamemode=spectator,tag=Player2,scores={DeathCounter=40..}] -214 116 -58 facing -192 116 -58
tp @a[gamemode=spectator,tag=Player3,scores={DeathCounter=40..}] -192 116 -80 facing -192 116 -58
tp @a[gamemode=spectator,tag=Player4,scores={DeathCounter=40..}] -192 116 -37 facing -192 116 -58
gamemode adventure @a[gamemode=spectator,tag=Player,scores={DeathCounter=40..}]

scoreboard players reset @a[scores={DeathCounter=40..}] DeathCounter