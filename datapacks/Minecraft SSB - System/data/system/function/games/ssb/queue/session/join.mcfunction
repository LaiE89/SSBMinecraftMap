## Join queue
execute unless score %arena.gameStarted system.global matches 1 unless score %arena.players system.global matches 10.. run schedule function system:games/ssb/queue/update 10t append
execute unless score %arena.gameStarted system.global matches 1 if score %arena.players system.global matches 10.. run tellraw @s [{"text":"The queue is full.","color":"red"}]
execute if score %arena.gameStarted system.global matches 1 run tellraw @s [{"text":"The game has already started. You are now spectating.","color":"gold"}]