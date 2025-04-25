## When player loses
# message
tellraw @a [{"selector":"@s","color":"red"},{"text":" defeated!","color":"dark_red"}]
tellraw @s [{"text":"You lost. Now spectating.","color":"red"}]

# stats
scoreboard players add @s system.stats.loss 1

# reset
function system:games/ssb/reset_local
tp @s 0 18 -940 facing 0 18 -941