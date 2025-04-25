# example call: function system:games/ssb/queue/assign {"target":"target","task":"add/reset"}
## Assigns player roles
# assign role
execute store result storage system.arena player.index int 1 run scoreboard players get %arena.players system.global
$execute as @a[$(target)] at @s run function system:games/ssb/queue/$(task) with storage system.arena player

# iterate through players
scoreboard players remove %arena.players system.global 1
$execute if score %arena.players system.global matches 1.. run function system:games/ssb/queue/assign {"target":"$(target)","task":"$(task)"}
execute if score %arena.players system.global matches 0 run data remove storage system.arena player