## Spawn to labyrinth
execute unless score @s system.kit.id matches 0.. run return run function system:utilities/portals/handle_no_kit
clear @s
tp @s 0 0 1000 facing 0 0 1001
function system:utilities/player_status/kit_loadout