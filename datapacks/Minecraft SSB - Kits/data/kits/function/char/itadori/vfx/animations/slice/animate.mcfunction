## Plays Slice Animation
# Randomizes rotation
execute store result entity @s Rotation[0] float 1 run random value -180..180
execute store result entity @s Rotation[1] float 1 run random value -90..90

# Randomizes patterns
execute store result score @s kits.timer run random value 1..4
execute if score @s kits.timer matches 1 positioned ^0.0625 ^-0.0625 ^0 run function kits:char/itadori/vfx/animations/slice/frames/f1
execute if score @s kits.timer matches 2 positioned ^0.0625 ^-0.0625 ^0 run function kits:char/itadori/vfx/animations/slice/frames/f2
execute if score @s kits.timer matches 3 positioned ^0.0625 ^-0.0625 ^0 run function kits:char/itadori/vfx/animations/slice/frames/f3
execute if score @s kits.timer matches 4 positioned ^0.0625 ^-0.0625 ^0 run function kits:char/itadori/vfx/animations/slice/frames/f4

# Resets data
scoreboard players reset @s kits.timer
scoreboard players reset @s kits.timer2
