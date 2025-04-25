## When Delaware Smash 100% is Used
# Buffs shock wave
tag @e[limit=1,sort=nearest,tag=MidoriyaDelawareSmashShockwave,type=area_effect_cloud] add Midoriya100DelawareSmashShockwave

# Plays spiral wind animation
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["Midoriya100DelawareSmashSpiralWindAnimation"]}
tp @e[limit=1,sort=nearest,tag=Midoriya100DelawareSmashSpiralWindAnimation,type=area_effect_cloud] @s
function kits:char/midoriya/one_for_all/delaware_smash/100/spiral_wind_animation/next_frame

# Self-harm
damage @s 2 bypass:player_attack_true_damage_no_kb by @s
particle item{item:"redstone_block"} 0 0 0.25 10 0 0 0.25 10 force
particle explosion ^ ^1 ^1 0 0 0 0 0 force
playsound minecraft:entity.zombie.break_wooden_door neutral @a[distance=..20] ~ ~ ~ 1 1 1
playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 2 1.5 1
