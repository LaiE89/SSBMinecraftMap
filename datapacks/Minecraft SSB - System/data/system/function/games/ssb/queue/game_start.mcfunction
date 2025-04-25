## When game starts
# game started
scoreboard players set %arena.gameStarted system.global 1
scoreboard players reset %arena.queueCountdown
scoreboard players reset %arena.queueCountdownSeconds

# teleport players to respective locations
spreadplayers 0 -1000 10 45 under 0 false @a[tag=system.arena.player]
tp @a[tag=system.arena.player1] 0 0 -962 facing 0 0 -963
tp @a[tag=system.arena.player2] 0 0 -1038 facing 0 0 -1037
tp @a[tag=system.arena.player3] 38 0 -1000 facing 37 0 -1000
tp @a[tag=system.arena.player4] -38 0 -1000 facing -37 0 -1000

# player ssb data
scoreboard players reset @a[tag=system.arena.player] system.criterion.death
scoreboard players set @a[tag=system.arena.player] system.ssb.lives 3
scoreboard objectives setdisplay sidebar system.ssb.lives

# give loadout
execute as @a[tag=system.arena.player] at @s run function system:utilities/player_status/kit_loadout

# fx
schedule clear system:games/ssb/queue/countdown
title @a[tag=system.arena.inside] title [{"text":"FIGHT! ","color":"red"}]
playsound entity.ender_dragon.growl neutral @a[tag=system.arena.inside] ~ ~ ~ 2 1 1