## When Dash 100% is Used
# Resets motion
function kits:char/midoriya/one_for_all/dash/reached_end

# Initiate dash
tag @s add Midoriya100Dashing
tag @s add MidoriyaDashing

# Calculates how far dash will travel
scoreboard players set @s kits.raycastTick 0
execute rotated ~ 0 positioned ~ ~ ~ run function kits:char/midoriya/one_for_all/dash/100/calculate_range

# Resistance
effect give @s minecraft:resistance 1 2 true

# Sounds
playsound minecraft:entity.bat.takeoff neutral @a[distance=..20] ~ ~ ~ 0.5 0.75 1
playsound minecraft:entity.illusioner.prepare_mirror neutral @a[distance=..20] ~ ~ ~ 0.5 2 1

# Self-harm
damage @s 2 bypass:player_attack_true_damage_no_kb by @s
particle item{item:"redstone_block"} 0 0 0.25 10 0 0 0.25 10 force
playsound minecraft:entity.zombie.break_wooden_door neutral @a[distance=..20] ~ ~ ~ 0.1 1 1

# Resets ability cooldown
scoreboard players set @s kits.ability1CD 0
