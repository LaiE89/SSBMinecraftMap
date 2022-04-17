# Resetting Quest
tag @a[tag=!Quest1,tag=!Quest2,tag=!Quest3] add Quest1
execute if score Time GameTime matches 72000 run tellraw @a {"text":"Quests have been refreshed...","bold":true,"color":"dark_green"}
execute if score Time GameTime matches 72000 run scoreboard players reset @a QuestLabyKills
execute if score Time GameTime matches 72000 run scoreboard players reset @a QuestBossKill
execute if score Time GameTime matches 72000 run scoreboard players reset @a QuestSSBWins
execute if score Time GameTime matches 72000 run tag @a remove Quest1Number1Completed
execute if score Time GameTime matches 72000 run tag @a remove Quest1Number2Completed
execute if score Time GameTime matches 72000 run tag @a remove Quest1Number3Completed

# Resetting Labyrinth
execute if score Time GameTime matches 34800 run tellraw @a[tag=InLabyrinth] {"text":"Labyrinth Monsters and Chests will reset in 1 minute...","bold":true,"color":"dark_green"}
execute if score Time GameTime matches 36000 run tellraw @a[tag=InLabyrinth] {"text":"Labyrinth's chests have been refreshed...","bold":true,"color":"dark_green"}
execute if score Time GameTime matches 36000 run execute positioned -5085.58 72.00 96.32 run kill @e[type=!minecraft:player,tag=!InLabyrinth,tag=!Boss,team=LabyrinthMob]
execute if score Time GameTime matches 36000 run execute positioned -5085.58 72.00 96.32 run function datapack:labyrinth_functions/labyrinthchests

execute if score Time GameTime matches 70800 run tellraw @a[tag=InLabyrinth] {"text":"Labyrinth Monsters and Chests will reset in 1 minute...","bold":true,"color":"dark_green"}
execute if score Time GameTime matches 72000 run tellraw @a[tag=InLabyrinth] {"text":"Labyrinth's chests have been refreshed...","bold":true,"color":"dark_green"}
execute if score Time GameTime matches 72000 run execute positioned -5085.58 72.00 96.32 run kill @e[type=!minecraft:player,tag=!InLabyrinth,tag=!Boss,team=LabyrinthMob]
execute if score Time GameTime matches 72000 run execute positioned -5085.58 72.00 96.32 run function datapack:labyrinth_functions/labyrinthchests
