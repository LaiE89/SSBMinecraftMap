# =================================== Spear Storm ==================================

# Summoning Spear
execute at @s[scores={Ability2CD=10}] run function datapack:labyrinth_functions/labyrinthbosses/cinders/spearstormcharge
execute as @e[type=area_effect_cloud,tag=Cinderspearcharge] at @s run function datapack:labyrinth_functions/labyrinthbosses/cinders/sunlightspearstationary

# Throwing Spear
execute at @s[scores={Ability2CD=30}] run function datapack:labyrinth_functions/labyrinthbosses/cinders/spearstormthrow
execute as @e[type=area_effect_cloud,tag=Cinderspear,tag=!Cinderspearcharge] at @s run function datapack:labyrinth_functions/labyrinthbosses/cinders/spearstormthrown

execute as @e[type=area_effect_cloud,tag=Cinderspearlocation] at @s run function datapack:labyrinth_functions/labyrinthbosses/cinders/spearstormlocation
execute as @e[type=area_effect_cloud,tag=Cinderfallingspear] at @s run function datapack:labyrinth_functions/labyrinthbosses/cinders/spearstormfalling