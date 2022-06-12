# Quest Refresh
tellraw @a {"text":"Quests have been refreshed...","bold":true,"color":"dark_green"}
scoreboard players reset @a QuestLabyKills
scoreboard players reset @a QuestBossKill
scoreboard players reset @a QuestSSBWins
tag @a remove Quest1Number1Completed
tag @a remove Quest1Number2Completed
tag @a remove Quest1Number3Completed

# Labyrinth Refresh
tellraw @a[tag=InLabyrinth] {"text":"Labyrinth's chests have been refreshed...","bold":true,"color":"dark_green"}
function datapack:labyrinth_functions/labyrinthreset