## Assign tasks to players
# core systems
function system:utilities/ui/player/main
function system:utilities/portals/main
execute if score @s system.criterion.leave matches 1.. run function system:utilities/player_status/reset
#execute if score @s system.criterion.drop matches 1.. as @e[type=item] at @s run function system:utilities/player_status/drop_prevent