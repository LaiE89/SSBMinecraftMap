## Resets All Local SSB
# spawn
clear @s
tp @s 0 1 0 facing 0 1.05 -1

# local scores
scoreboard players reset @s system.lives
scoreboard players reset @s system.death.timer
scoreboard players reset @s system.criterion.death
scoreboard players reset @s system.criterion.leave
scoreboard players reset @s system.kits.id

# game tags
tag @s remove arena.inside
tag @s remove arena.player
tag @s remove arena.player1
tag @s remove arena.player2
tag @s remove arena.player3
tag @s remove arena.player4
tag @s remove arena.player5
tag @s remove arena.player6
tag @s remove arena.player7
tag @s remove arena.player8
tag @s remove arena.player9
tag @s remove arena.player10
tag @s remove arena.unassigned

# kits
function kits:_main/reset