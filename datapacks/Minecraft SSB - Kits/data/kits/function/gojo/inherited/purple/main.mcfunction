## Execute at Purple
# Movement
tp @s ^ ^ ^1

# Collision
execute as @e[distance=..5,tag=!Gojo,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:gojo/inherited/purple/hit

# FX
execute positioned ~ ~1 ~ run function kits:gojo/vfx/particles/purple
playsound entity.generic.explode neutral @a[distance=..30] ~ ~ ~ 0.25 0.5 0.25
