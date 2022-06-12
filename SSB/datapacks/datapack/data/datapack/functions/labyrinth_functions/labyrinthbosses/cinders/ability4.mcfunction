# =================================== Thrust ==================================

# Charging Dash
execute at @s[scores={Ability2CD=10}] run function datapack:labyrinth_functions/labyrinthbosses/cinders/thrustcharge

# Execute at "Soul of Cinder" when finished charging dash
execute at @s[scores={Ability2CD=30}] run function datapack:labyrinth_functions/labyrinthbosses/cinders/thrustactivate

# These are the commands that make the dash actually dash
execute at @s facing entity @e[type=minecraft:area_effect_cloud,tag=CinderThrust,limit=1,sort=nearest] eyes run tp @s ^ ^ ^2

# Particles
execute if entity @e[type=area_effect_cloud,tag=CinderThrust] positioned ~ ~1.5 ~ run particle minecraft:sweep_attack ^ ^ ^1 0 0 0 0 1

# If the player is close to "Soul of Cinder" when dashing, this happens
execute if entity @e[type=area_effect_cloud,tag=CinderThrust] as @a[distance=..3] at @s run function datapack:labyrinth_functions/labyrinthbosses/cinders/thrustdamage
execute at @s if entity @e[type=area_effect_cloud,tag=CinderThrust,distance=..2] run kill @e[type=area_effect_cloud,tag=CinderThrust]