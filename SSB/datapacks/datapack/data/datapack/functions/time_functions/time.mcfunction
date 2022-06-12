# Resetting Quest
tag @a[tag=!Quest1,tag=!Quest2,tag=!Quest3] add Quest1
execute if score Time GameTime matches 72000 run function datapack:time_functions/1hour
execute if score Time GameTime matches 54000 run function datapack:time_functions/30min
execute if score Time GameTime matches 36000 run function datapack:time_functions/30min
execute if score Time GameTime matches 18000 run function datapack:time_functions/30min

# Resetting Labyrinth
execute if score Time GameTime matches 16800 run tellraw @a[tag=InLabyrinth] {"text":"Labyrinth Monsters and Chests will reset in 1 minute...","bold":true,"color":"dark_green"}
execute if score Time GameTime matches 34800 run tellraw @a[tag=InLabyrinth] {"text":"Labyrinth Monsters and Chests will reset in 1 minute...","bold":true,"color":"dark_green"}
execute if score Time GameTime matches 52800 run tellraw @a[tag=InLabyrinth] {"text":"Labyrinth Monsters and Chests will reset in 1 minute...","bold":true,"color":"dark_green"}
execute if score Time GameTime matches 70800 run tellraw @a[tag=InLabyrinth] {"text":"Labyrinth Monsters and Chests will reset in 1 minute...","bold":true,"color":"dark_green"}