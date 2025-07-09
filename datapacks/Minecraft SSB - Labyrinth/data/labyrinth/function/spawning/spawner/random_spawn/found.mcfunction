## Found random spawn position
# run function at spawn position
$execute if score @s labyrinth.math matches -1 run execute positioned ^ ^ ^-1 run function labyrinth:spawning/summon/entity {"entity":"$(entity)","id":"$(id)"}
$execute if score @s labyrinth.math matches 0 run execute positioned ^ ^ ^ run function labyrinth:spawning/summon/entity {"entity":"$(entity)","id":"$(id)"}

# copy spawner id to entity from temp marker
execute positioned ~ ~ ~ run scoreboard players operation @e[type=!#kits:non_entity,limit=1,sort=nearest,tag=labyrinth.newEntity] labyrinth.spawner.id = @s labyrinth.spawner.id