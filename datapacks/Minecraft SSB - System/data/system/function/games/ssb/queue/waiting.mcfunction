## Waiting for players
# at players who are waiting
title @a[tag=system.arena.inside] actionbar [{"text":"Players: ","color":"gold"},{"score":{"name":"%arena.players","objective":"system.global"},"color":"white"},{"text":"/10","color":"white"}]
effect give @a[tag=system.arena.inside] resistance 1 4 true

# start requirement
execute unless score %arena.players system.global matches 2.. run scoreboard players set %arena.queueCountdown system.global 0
execute if score %arena.players system.global matches 2.. run scoreboard players add %arena.queueCountdown system.global 1

# countdown
execute if score %arena.queueCountdown system.global matches 1.. run schedule function system:games/ssb/queue/countdown 1s append
execute if score %arena.queueCountdown system.global matches 220.. run function system:games/ssb/queue/game_start