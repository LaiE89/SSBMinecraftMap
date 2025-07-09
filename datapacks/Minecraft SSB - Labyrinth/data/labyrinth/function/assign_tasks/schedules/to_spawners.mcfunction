# on schedule
## Assign tasks to spawners
execute as @e[type=marker,tag=labyrinth.spawner] at @s run function labyrinth:spawning/spawner/main

# low frequency checks
schedule clear labyrinth:assign_tasks/schedules/to_spawners