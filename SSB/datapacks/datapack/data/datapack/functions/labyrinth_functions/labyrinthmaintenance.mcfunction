### Labyrinth Reset ###
execute unless entity @a[gamemode=!spectator,tag=InLabyrinth] run schedule function datapack:labyrinth_functions/labyrinthreset 5t replace

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
scoreboard players add @a[tag=InLabyrinth,scores={Basic_Kills=1..}] LabyrinthKills 1
scoreboard players add @a[tag=InLabyrinth,scores={Basic_Death=1..}] LabyrinthDeath 1

### Rare items ###
execute as @a[scores={MailItem=1..}] run function datapack:labyrinth_functions/raredrops/main

### Important Scoreboards ###
scoreboard players reset @a[scores={Labyrinth_Key=1..}] Labyrinth_Key