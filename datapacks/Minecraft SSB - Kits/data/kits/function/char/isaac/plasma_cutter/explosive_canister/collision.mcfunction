## If Explosive Collides With Enemy or Plasma Cut Ray
# Execute at enemies hit by explosion
execute as @e[distance=..10,tag=!Isaac,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:char/isaac/plasma_cutter/explosive_canister/hit

# Detonates nearby explosives
tag @e[distance=..10,tag=IsaacObjectExplosive,type=armor_stand] add IsaacObjectExplosiveDetonating

# Particles
function kits:char/isaac/plasma_cutter/explosive_canister/expanding_sphere/play {"Inaccuracy":"50","Speed":"100","Limit":"10","R":"99","G":"29","B":"1","Size":"50"}
particle flame ~ ~0.5 ~ 0 0 0 1 100 force
particle flash ~ ~0.5 ~ 0 0 0 0 2 force

# Sound
playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 2 0 1

# Kills explosive
kill @s
