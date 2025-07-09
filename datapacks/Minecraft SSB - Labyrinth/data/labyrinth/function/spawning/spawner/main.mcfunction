# note: called in tick
## Executed at spawner every schedule
# count spawned entities
scoreboard players set @s labyrinth.entity 0
tag @s add labyrinth.currentSpawner
execute as @e[type=!#kits:non_entity,team=LabyrinthMobs] if score @s labyrinth.spawner.id = @e[type=marker,limit=1,sort=nearest,tag=labyrinth.currentSpawner] labyrinth.spawner.id run scoreboard players add @e[type=marker,limit=1,sort=nearest,tag=labyrinth.currentSpawner] labyrinth.entity 1
tag @s[tag=labyrinth.currentSpawner] remove labyrinth.currentSpawner

# spawn delay
execute unless score @s labyrinth.entity >= @s labyrinth.entityMax unless score @s labyrinth.cd >= @s labyrinth.cdMax run scoreboard players add @s labyrinth.cd 1
execute if score @s labyrinth.entity >= @s labyrinth.entityMax if score @s labyrinth.cd matches 1.. run scoreboard players set @s labyrinth.cd 0

# activate spawner if conditions are met
execute store result storage labyrinth spawner.curr.id int 1 run scoreboard players get @s labyrinth.spawner.id
execute if score @s labyrinth.entity < @s labyrinth.entityMax if score @s labyrinth.cd >= @s labyrinth.cdMax run function labyrinth:spawning/spawner/activate with storage labyrinth spawner.curr