## Merges data to summoned spawner
# storages
$data modify storage labyrinth spawner.$(spawnerID).detectVert set value $(detectVert)
$data modify storage labyrinth spawner.$(spawnerID).detectHorz set value $(detectHorz)
#data modify storage labyrinth spawner.$(spawnerID).spawnDelay set value $(spawnDelay)
$data modify storage labyrinth spawner.$(spawnerID).spawnRadius set value $(spawnRadius)
#data modify storage labyrinth spawner.$(spawnerID).entityLimit set value $(entityLimit)
$data modify storage labyrinth spawner.$(spawnerID).entity set value "$(entity)"
$data modify storage labyrinth spawner.$(spawnerID).entityNum set value $(entityNum)
$data modify storage labyrinth spawner.$(spawnerID).entityID set value $(entityID)
$data modify storage labyrinth spawner.$(spawnerID).spawnerID set value $(spawnerID)

# scores
scoreboard players set @s labyrinth.cd 0
$scoreboard players set @s labyrinth.cdMax $(spawnDelay)
scoreboard players set @s labyrinth.entity 0
$scoreboard players set @s labyrinth.entityMax $(entityLimit)
$scoreboard players set @s labyrinth.spawner.id $(spawnerID)