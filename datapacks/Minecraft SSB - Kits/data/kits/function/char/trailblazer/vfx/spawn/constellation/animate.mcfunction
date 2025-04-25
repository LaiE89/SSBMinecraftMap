# Plays Constellation Animation
execute store result score @s kits.raycastTick3 run random value 2..4
function kits:char/trailblazer/vfx/spawn/constellation/start
kill @s

# kits.raycastTick1 = length of branch
# kits.raycastTick2 = number of branches
# kits.raycastTick3 = number of sources
