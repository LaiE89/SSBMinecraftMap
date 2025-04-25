## When player respawns
# revive
scoreboard players reset @s system.ssb.deathTimer
gamemode adventure @s

# teleport to respective location
spreadplayers 0 -1000 10 45 under 0 false @s
tp @s[tag=system.arena.player1] 0 0 -962 facing 0 0 -963
tp @s[tag=system.arena.player2] 0 0 -1038 facing 0 0 -1037
tp @s[tag=system.arena.player3] 38 0 -1000 facing 37 0 -1000
tp @s[tag=system.arena.player4] -38 0 -1000 facing -37 0 -1000

# game state
scoreboard players remove @s system.ssb.lives 1
execute if score @s system.ssb.lives matches 0 run function system:games/ssb/ingame/results/lose