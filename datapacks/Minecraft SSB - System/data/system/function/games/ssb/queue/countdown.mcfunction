## Countdown
# title
scoreboard players remove %arena.queueCountdownSeconds system.global 1
execute if score %arena.queueCountdown system.global matches ..20 run scoreboard players set %arena.queueCountdownSeconds system.global 10
title @a[tag=system.arena.inside] title [{"text":"Starting in ","color":"white"},{"score":{"name":"%arena.queueCountdownSeconds","objective":"system.global"},"color":"green"}]

# sound
playsound block.note_block.pling neutral @a[tag=system.arena.inside] ~ ~ ~ 1 1 1

# delay
schedule clear system:games/ssb/queue/countdown