## Updates Queue
# reset current roles
function system:games/ssb/queue/assign {"target":"tag=arena.inside","task":"role_reset"}

# tags 
tag @a[x=-90,y=-5,z=-910,dx=180,dy=39,dz=-180] add arena.unassigned
tag @a[x=-90,y=-5,z=-910,dx=180,dy=39,dz=-180] add arena.inside

# assign new roles
execute store result score %arena.players system.global run execute if entity @a[x=-90,y=-5,z=-910,dx=180,dy=39,dz=-180]
function system:games/ssb/queue/assign {"target":"tag=arena.unassigned,limit=1","task":"role_add"}
execute store result score %arena.players system.global run execute if entity @a[x=-90,y=-5,z=-910,dx=180,dy=39,dz=-180]

# pending queue
scoreboard players set %arena.gameStarted system.global 0
scoreboard players reset %arena.queueCountdown
scoreboard players reset %arena.queueCountdownSeconds