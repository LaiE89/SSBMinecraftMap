## Runs each tick
# assign tasks
execute as @a at @s run function system:assign_tasks/to_players
execute as @e[type=chest_minecart] at @s run function system:assign_tasks/to_carts

# ssb game
execute if score %arena.gameStarted system.global matches 0 run function system:games/ssb/queue/waiting
execute if score %arena.gameStarted system.global matches 1 run function system:games/ssb/ingame/main