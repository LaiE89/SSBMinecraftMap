## If Shock Wave AEC Collides With Enemy
# Execute at enemy hit by shock wave
execute as @e[distance=..2,limit=1,sort=nearest,tag=!Midoriya,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:midoriya/one_for_all/delaware_smash/hit2

# Particles
particle flash ~ ~1 ~ 0 0 0 0 2 force

# Sound
playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 1 1 1

# Kills shock wave
kill @s
