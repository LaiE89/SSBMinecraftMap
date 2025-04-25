## When Dash is Used
# Resets motion
function kits:char/midoriya/one_for_all/dash/reached_end

# Initiate dash
tag @s add MidoriyaDashing

# Calculates how far dash will travel
execute rotated ~ 0 positioned ~ ~ ~ run function kits:char/midoriya/one_for_all/dash/dashdirection

effect give @s minecraft:resistance 1 2 true

# Sounds
playsound minecraft:entity.bat.takeoff neutral @a[distance=..20] ~ ~ ~ 0.5 0.75 1
playsound minecraft:entity.illusioner.prepare_mirror neutral @a[distance=..20] ~ ~ ~ 0.75 2 1

# Resets ability cooldown
scoreboard players set @s kits.ability1CD 0
