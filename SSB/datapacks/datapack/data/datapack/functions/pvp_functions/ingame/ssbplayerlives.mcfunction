# If player gets knocked out of stadium
execute as @a[tag=Player] at @s unless entity @s[x=-161,y=141,z=-90,dx=-63,dy=-58,dz=63] unless entity @s[x=-198,y=72,z=-41,dx=12,dy=3,dz=-10] run function datapack:pvp_functions/ingame/outofbounds
execute as @a[tag=Player] at @s if block ~ ~-1 ~ minecraft:white_stained_glass run function datapack:pvp_functions/ingame/outofbounds

# If Player dies
scoreboard players remove @a[tag=Player,scores={Basic_Death=1..}] PVP_Lives 1

# If Players' lives reaches 0
execute as @a[tag=Player,scores={PVP_Lives=0}] at @s run function datapack:pvp_functions/ingame/playerloses

# What happens when a player wins
execute store result score @a[tag=Player] PVP_Winner run execute if entity @a[tag=Player,x=-243,y=80,z=-8,dx=101,dy=110,dz=-101]
execute if score @a[tag=Player,tag=Player1,limit=1] PVP_Winner matches 1 run tellraw @a ["",{"selector":"@a[tag=Player1,limit=1,sort=nearest]","color":"dark_red","bold":true},{"text":" won the game","color":"dark_red","bold":true}]
execute if score @a[tag=Player,tag=Player2,limit=1] PVP_Winner matches 1 run tellraw @a ["",{"selector":"@a[tag=Player2,limit=1,sort=nearest]","color":"dark_blue","bold":true},{"text":" won the game","color":"dark_blue","bold":true}]
execute if score @a[tag=Player,tag=Player3,limit=1] PVP_Winner matches 1 run tellraw @a ["",{"selector":"@a[tag=Player3,limit=1,sort=nearest]","color":"dark_green","bold":true},{"text":" won the game","color":"dark_green","bold":true}]
execute if score @a[tag=Player,tag=Player4,limit=1] PVP_Winner matches 1 run tellraw @a ["",{"selector":"@a[tag=Player4,limit=1,sort=nearest]","color":"gold","bold":true},{"text":" won the game","color":"gold","bold":true}]
scoreboard players add @a[tag=Player,scores={PVP_Winner=1}] SSBWins 1
scoreboard players add @a[tag=Player,team=!Warrior,team=!Berserker,team=!Immortal,team=!Ace,team=!Prodigy,team=!God,scores={PVP_Winner=1}] Money 3
scoreboard players add @a[tag=Player,team=Warrior,scores={PVP_Winner=1}] Money 5
scoreboard players add @a[tag=Player,team=Berserker,scores={PVP_Winner=1}] Money 7
scoreboard players add @a[tag=Player,team=Immortal,scores={PVP_Winner=1}] Money 9
scoreboard players add @a[tag=Player,team=Ace,scores={PVP_Winner=1}] Money 11
scoreboard players add @a[tag=Player,team=Prodigy,scores={PVP_Winner=1}] Money 13
scoreboard players add @a[tag=Player,team=God,scores={PVP_Winner=1}] Money 15
execute if score @a[tag=Player,limit=1] PVP_Winner matches 1 run function datapack:pvp_functions/ingame/playerwins