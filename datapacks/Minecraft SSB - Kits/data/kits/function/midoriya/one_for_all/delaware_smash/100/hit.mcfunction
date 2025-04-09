## If Shock Wave 100% AEC Collides With Enemy
# Execute at enemy hit by shock wave
execute as @e[distance=..2.5,limit=1,sort=nearest,tag=!Midoriya,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:midoriya/one_for_all/delaware_smash/100/hit2

# Knocks hit enemy back
scoreboard players set @s kits.raycastTick 0
execute positioned ~ ~1 ~ run function kits:midoriya/one_for_all/delaware_smash/100/kb

# Knocks hit enemy back once
tag @e[tag=Midoriya100DelawareSmashKB] remove Midoriya100DelawareSmashKB

# Particles
particle flash ~ ~1 ~ 0 0 0 0 2 force

# Sound
playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 1 0 1

# Kills shock wave
kill @e[limit=1,sort=nearest,tag=Midoriya100DelawareSmashSpiralWindAnimation,type=area_effect_cloud]
schedule clear kits:midoriya/one_for_all/delaware_smash/100/spiral_wind_animation/next_frame
kill @s
