# note: connects modules to provide the kit loadout
## Gives kit loadout
scoreboard players operation @s kits.id = @s system.kit.id
function kits:main/give
give @s golden_carrot 64