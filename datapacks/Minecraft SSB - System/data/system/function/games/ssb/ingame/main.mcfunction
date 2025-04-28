## Execute every 1s while the game is running
# at individual players
execute as @a[tag=system.arena.player] at @s run function system:games/ssb/ingame/player

# game status
execute store result score %arena.playersAlive system.global run execute if entity @a[tag=system.arena.player]
execute if score %arena.playersAlive system.global matches ..1 run function system:games/ssb/ingame/end

# low frequency checks
#schedule clear system:games/ssb/ingame/main