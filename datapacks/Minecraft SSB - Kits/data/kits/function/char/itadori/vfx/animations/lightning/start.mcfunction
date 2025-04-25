# Creates Lightning Root
scoreboard players remove @s kits.raycastTick3 1
execute store result score @s kits.raycastTick2 run random value 2..5
execute positioned as @s run function kits:char/itadori/vfx/animations/lightning/branch
