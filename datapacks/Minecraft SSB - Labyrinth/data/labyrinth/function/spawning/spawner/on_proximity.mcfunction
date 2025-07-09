## Calls random spawn only after the proxmity check passes
# constants
scoreboard players set %spawning.spawner.-1 labyrinth.constant -1

# get abs vertical distance
execute store result score @s labyrinth.dy run data get entity @s Pos[1]
execute store result score @p labyrinth.dy run data get entity @p Pos[1]
scoreboard players operation @s labyrinth.dy -= @p labyrinth.dy
execute if score @s labyrinth.dy matches ..0 run scoreboard players operation @s labyrinth.dy *= %spawning.spawner.-1 labyrinth.constant

# if distances is within allowed threshold
scoreboard players set @s labyrinth.math 0
$execute if score @s labyrinth.dy matches 0..$(detectVert) run scoreboard players add @s labyrinth.math 1
$execute if entity @p[distance=..$(detectHorz)] run scoreboard players add @s labyrinth.math 1
$execute if score @s labyrinth.math matches 2 run function labyrinth:spawning/spawner/random_spawn/start with storage labyrinth spawner.$(spawnerID)

# reset
scoreboard players reset %spawning.spawner.-1