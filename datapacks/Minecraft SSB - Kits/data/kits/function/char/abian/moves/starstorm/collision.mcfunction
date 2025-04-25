## Starstorm Upon Collision
# Hits nearby enemies
execute as @e[distance=..5,tag=!Abian,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:char/abian/moves/starstorm/hit

# FX
execute rotated ~ 90 run function kits:char/abian/vfx/particles/ripple/type3
particle flash ~ ~ ~ 0 0 0 0 2 force
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 1.5 2 1

# Kills starstorm
kill @s
