## When Player Dies
# teleport to death pos
function system:utilities/player_status/death {"tpPlayer":"1","onDeathPos":"function none"}

# set spectator duration
gamemode spectator @s
scoreboard players set @s system.death.timer 5

# run once
scoreboard players reset @s system.criterion.death