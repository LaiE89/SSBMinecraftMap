## Spawn to arena
clear @s
execute unless score %arena.players system.global matches 10.. run tp @s 0 18 -940 facing 0 18 -941
execute if score %arena.gameStarted system.global matches 1 run tp @s 0 18 -940 facing 0 18 -941
function system:games/ssb/queue/session/join