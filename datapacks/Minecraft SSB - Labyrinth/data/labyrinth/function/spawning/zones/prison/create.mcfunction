# note: spawners cannot be within (0 block radius) each other
## Creates prison contents when player enters
# spawners
execute positioned -27 -4 1117 run function labyrinth:spawning/spawner/summon {"detectVert":"5","detectHorz":"20","spawnDelay":"10","spawnRadius":"10","entityLimit":"2","entityNum":"1","entity":"skeleton","entityID":"1","spawnerID":"1"}
execute positioned 37 -4 1117 run function labyrinth:spawning/spawner/summon {"detectVert":"5","detectHorz":"50","spawnDelay":"15","spawnRadius":"10","entityLimit":"1","entityNum":"1","entity":"skeleton","entityID":"2","spawnerID":"2"}
