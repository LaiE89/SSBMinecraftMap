## When Game Starts
# game started
scoreboard players set %arena.gameStarted system.global 1
scoreboard players reset %arena.queueCountdown
scoreboard players reset %arena.queueCountdownSeconds

# teleport players to respective locations
spreadplayers 0 -1000 10 45 under 0 false @a[tag=arena.player]
tp @a[tag=arena.player1] 0 0 -962 facing 0 0 -963
tp @a[tag=arena.player2] 0 0 -1038 facing 0 0 -1037
tp @a[tag=arena.player3] 38 0 -1000 facing 37 0 -1000
tp @a[tag=arena.player4] -38 0 -1000 facing -37 0 -1000

# give loadout
execute as @a[tag=arena.player] run scoreboard players operation @s kits.id = @s system.kits.id
scoreboard players reset @s system.kits.id
scoreboard players reset @a[tag=arena.player] system.criterion.death
scoreboard players set @a[tag=arena.player] system.lives 3
scoreboard objectives setdisplay sidebar system.lives
execute as @a[tag=arena.player] at @s run function kits:_main/give

# fx
schedule clear system:games/ssb/queue/countdown
title @a[tag=arena.inside] title [{"text":"FIGHT! ","color":"red"}]
playsound entity.ender_dragon.growl neutral @a[tag=arena.inside] ~ ~ ~ 2 1 1