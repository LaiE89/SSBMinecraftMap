## Resets all local ssb
# spawn
clear @s
tp @s 0 1 0 facing 0 1.05 -1
gamemode adventure @s

# local scores
scoreboard players reset @s system.kit.id
scoreboard players reset @s system.ssb.lives
scoreboard players reset @s system.ssb.deathTimer
scoreboard players reset @s system.criterion.death
scoreboard players reset @s system.criterion.leave

# game tags
tag @s remove system.arena.inside
tag @s remove system.arena.player
tag @s remove system.arena.player1
tag @s remove system.arena.player2
tag @s remove system.arena.player3
tag @s remove system.arena.player4
tag @s remove system.arena.player5
tag @s remove system.arena.player6
tag @s remove system.arena.player7
tag @s remove system.arena.player8
tag @s remove system.arena.player9
tag @s remove system.arena.player10
tag @s remove system.arena.unassigned

# kits
function kits:main/reset