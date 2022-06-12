# =================================== Sunlight Spear ==================================

# Summoning Spear
execute at @s[scores={Ability2CD=10}] run function datapack:labyrinth_functions/labyrinthbosses/cinders/sunlightspearcharge
execute at @s[scores={Ability2CD=50}] run function datapack:labyrinth_functions/labyrinthbosses/cinders/sunlightspearcharge
execute as @e[type=area_effect_cloud,tag=Cinderlightningcharge] at @s run function datapack:labyrinth_functions/labyrinthbosses/cinders/sunlightspearstationary

# Throwing Spear
execute at @s[scores={Ability2CD=30}] run function datapack:labyrinth_functions/labyrinthbosses/cinders/sunlightspearthrow
execute at @s[scores={Ability2CD=70}] run function datapack:labyrinth_functions/labyrinthbosses/cinders/sunlightspearthrow
execute as @e[type=area_effect_cloud,tag=Cinderlightning,tag=!Cinderlightningcharge] at @s run function datapack:labyrinth_functions/labyrinthbosses/cinders/sunlightspearthrown
