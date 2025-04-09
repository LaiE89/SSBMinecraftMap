## Execute Every 1s While the Game is Running
# at individual players
execute as @a[tag=arena.player] at @s run function system:games/ssb/ingame/player

# game status
execute store result score %arena.playersAlive system.global run execute if entity @a[tag=arena.player]
execute if score %arena.playersAlive system.global matches ..1 run function system:games/ssb/ingame/end

# low frequency checks
schedule clear system:games/ssb/ingame/main