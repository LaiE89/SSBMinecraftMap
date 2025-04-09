## When Detroit Smash 100% is Used
# Execute at enemy hit by detroit smash 100%
execute as @e[nbt={HurtTime:10s},distance=..5,limit=1,sort=nearest,tag=!Midoriya] at @s run function kits:midoriya/one_for_all/detroit_smash/100/hit

# Knocks hit enemy back
scoreboard players set @s kits.raycastTick 0
execute rotated ~ 0 positioned ~ ~ ~ run function kits:midoriya/one_for_all/detroit_smash/100/kb

# Knocks hit enemy back once
tag @e[tag=Midoriya100DetroitSmashKB] remove Midoriya100DetroitSmashKB

# Plays spiral wind animation
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["Midoriya100DetroitSmashSpiralWindAnimation"]}
tp @e[limit=1,sort=nearest,tag=Midoriya100DetroitSmashSpiralWindAnimation,type=area_effect_cloud] @s
function kits:midoriya/one_for_all/detroit_smash/100/spiral_wind_animation/next_frame

# Sound
playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 0.5 0 1
playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 2 0 1

# Self-harm
# effect give @s minecraft:poison 2 9 true
effect give @s minecraft:slowness 2 2 true
# effect give @s minecraft:weakness 2 9 true
damage @s 6 bypass:player_attack_true_damage_no_kb by @s
particle item{item:"redstone_block"} 0 0 0.25 20 0 0 0.25 20 force
playsound minecraft:entity.zombie.break_wooden_door neutral @a[distance=..20] ~ ~ ~ 0.5 0.5 1

# Resets stored power
scoreboard players set @s kits.timer4 0
