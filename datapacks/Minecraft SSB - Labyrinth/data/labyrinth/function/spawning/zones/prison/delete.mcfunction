## Deletes prison contents when player exits
kill @e[type=minecraft:marker,tag=labyrinth.spawner,predicate=labyrinth:zones/prison]
kill @e[type=!#kits:non_entity,team=LabyrinthMobs]
kill @e[type=item,predicate=labyrinth:zones/prison,predicate=labyrinth:generic/labyrinth_item]
kill @e[type=minecraft:experience_orb,predicate=labyrinth:zones/prison]