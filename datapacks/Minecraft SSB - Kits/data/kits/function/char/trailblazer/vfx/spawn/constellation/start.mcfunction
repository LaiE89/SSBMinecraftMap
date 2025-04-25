# Creates Constellation Root
scoreboard players remove @s kits.raycastTick3 1
execute store result score @s kits.raycastTick2 run random value 2..4
execute positioned as @s positioned ~ ~1 ~ run function kits:char/trailblazer/vfx/spawn/constellation/branch
