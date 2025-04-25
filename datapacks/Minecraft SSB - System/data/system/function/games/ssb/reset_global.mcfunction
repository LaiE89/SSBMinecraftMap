## Resets all global ssb
# global scores
scoreboard objectives setdisplay sidebar
scoreboard players reset %arena.players
scoreboard players reset %arena.playersAlive
scoreboard players reset %arena.gameStarted
scoreboard players reset %arena.queueCountdown
scoreboard players reset %arena.queueCountdownSeconds

# storages
data remove storage system.arena player