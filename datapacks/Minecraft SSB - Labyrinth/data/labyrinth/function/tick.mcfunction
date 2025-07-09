## Runs each tick
# assign scheduled tasks to entities
schedule function labyrinth:assign_tasks/schedules/to_spawners 1s append

# schedule main logic for zones
schedule function labyrinth:spawning/zones/main 1s append