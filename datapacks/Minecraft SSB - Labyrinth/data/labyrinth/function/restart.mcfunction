## Resets everything in labyrinth
# message
tellraw @a ["",{"text":"restarting labyrinth...","color":"red"}]

# remove teams
team remove LabyrinthMobs

# remove storages
data remove storage labyrinth spawner

# remove scoreboards
scoreboard objectives remove labyrinth.constant
scoreboard objectives remove labyrinth.math

scoreboard objectives remove labyrinth.cd
scoreboard objectives remove labyrinth.cdMax

scoreboard objectives remove labyrinth.entity
scoreboard objectives remove labyrinth.entityMax

scoreboard objectives remove labyrinth.spawner.id

scoreboard objectives remove labyrinth.dy