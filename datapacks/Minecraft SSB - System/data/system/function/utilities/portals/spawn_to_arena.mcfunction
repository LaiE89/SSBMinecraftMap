## Spawn to arena
execute unless score @s system.kit.id matches 0.. run return run function system:utilities/portals/handle_no_kit
clear @s
execute unless score %arena.players system.global matches 10.. run tp @s 0 18 -940 facing 0 18 -941
execute if score %arena.gameStarted system.global matches 1 run tp @s 0 18 -940 facing 0 18 -941
function system:games/ssb/queue/session/join