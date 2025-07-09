## Finds random spawn position
# finding conditions
execute unless block ~ ~ ~ #labyrinth:passable run scoreboard players set @s labyrinth.math -1
execute if score @s labyrinth.math matches ..0 run function labyrinth:spawning/spawner/random_spawn/found with storage labyrinth spawning.marker.randomPos

# recursive call
scoreboard players remove @s labyrinth.math 1
execute if score @s labyrinth.math matches 0.. positioned ^ ^ ^0.5 run function labyrinth:spawning/spawner/random_spawn/find