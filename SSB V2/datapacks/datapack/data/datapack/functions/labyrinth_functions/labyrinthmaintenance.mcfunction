### Labyrinth Reset ###
execute unless entity @a[gamemode=!spectator,tag=InLabyrinth] run schedule function datapack:labyrinth_functions/labyrinthreset 39t append

# Adding Room tags
function datapack:labyrinth_functions/labyrinthstartup/ifinlabyrinth

### Functions specific to each Room ###
# School
execute if entity @p[tag=LabyrinthSchool] run function datapack:labyrinth_functions/labyrinthstartup/ifinschool

# Underground
execute if entity @p[tag=LabyrinthUnderground] run function datapack:labyrinth_functions/labyrinthstartup/ifinunderground

# Prison
execute if entity @p[tag=LabyrinthPrison] run function datapack:labyrinth_functions/labyrinthstartup/ifinprison

### Boss Timer ###
scoreboard players set @a[scores={BossTimer=300..}] BossTimer -1

### Stats ###
scoreboard players add @a[tag=InLabyrinth,scores={Kills=1..}] LabyrinthKills 1
scoreboard players add @a[tag=InLabyrinth,scores={Death=1..}] LabyrinthDeath 1