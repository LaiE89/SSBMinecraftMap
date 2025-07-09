## Starts the entire procedure
# initialize
$scoreboard players set %spawning.marker.randomPos.itt labyrinth.math $(entityNum)
$data modify storage labyrinth spawning.marker.randomPos.id set value $(entityID)
$data modify storage labyrinth spawning.marker.randomPos.entity set value "$(entity)"

# run
summon marker ~ ~ ~ {Tags:["labyrinth.spawnerRandomPos"]}
$execute as @e[type=marker,limit=1,sort=nearest,tag=labyrinth.spawnerRandomPos] at @s run function labyrinth:spawning/spawner/random_spawn/init with storage labyrinth spawner.$(spawnerID)

# reset
scoreboard players reset %spawning.marker.randomPos.itt
data remove storage labyrinth spawning.marker.randomPos
scoreboard players set @s labyrinth.cd 0