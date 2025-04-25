## When player wins
# message
tellraw @a [{"selector":"@s","color":"yellow"},{"text":" has won the game!","color":"gold"}]
tellraw @s [{"text":"You win!","color":"green"}]

# stats
scoreboard players add @s system.stats.win 1

# reset
function system:games/ssb/reset_local