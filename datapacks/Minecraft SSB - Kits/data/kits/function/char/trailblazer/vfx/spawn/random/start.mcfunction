# Initializes Random Spawn Position
execute store result entity @s Rotation[0] float 1 run random value -180..180
execute store result score @s kits.raycastTick run random value 5..10
execute rotated as @s run function kits:char/trailblazer/vfx/spawn/random/find
