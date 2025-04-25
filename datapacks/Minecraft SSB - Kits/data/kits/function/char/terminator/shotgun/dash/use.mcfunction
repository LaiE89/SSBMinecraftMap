## When Fast Forward is Used
# Resets motion
function kits:char/terminator/shotgun/dash/reached_end

# Initiate dash
tag @s add TerminatorDashing

# Calculates how far dash will travel
execute positioned ~ ~ ~ rotated ~ 0 run function kits:char/terminator/shotgun/dash/dashdirection

# Resistance stacks
execute if data entity @s {active_effects:[{id:"minecraft:resistance",amplifier:2b}]} run function kits:char/terminator/shotgun/dash/resistance_levels/level3
execute if data entity @s {active_effects:[{id:"minecraft:resistance",amplifier:1b}]} run function kits:char/terminator/shotgun/dash/resistance_levels/level3
execute if data entity @s {active_effects:[{id:"minecraft:resistance"}]} run function kits:char/terminator/shotgun/dash/resistance_levels/level2
effect give @s minecraft:resistance 5 0 true

# Reload shotgun
scoreboard players add @s[scores={kits.timer=..1}] kits.timer 1

# Terminate passive
function kits:char/terminator/terminate/use_ability

# Sounds
playsound minecraft:entity.bat.takeoff neutral @a[distance=..20] ~ ~ ~ 0.5 0 1
playsound minecraft:entity.illusioner.prepare_mirror neutral @a[distance=..20] ~ ~ ~ 0.75 1.5 1

# Resets scores
scoreboard players set @s kits.ability3CD 0
scoreboard players set @s kits.ability4CD 0
