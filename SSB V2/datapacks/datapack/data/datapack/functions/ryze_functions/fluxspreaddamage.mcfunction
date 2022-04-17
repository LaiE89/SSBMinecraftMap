scoreboard players reset @s RyzeFluxTimer
particle minecraft:bubble_pop ~ ~ ~ 0.5 1 0.5 0 100
playsound minecraft:entity.dragon_fireball.explode neutral @a[distance=..15] ~ ~ ~ 2 1.5 1
function datapack:damage2
tag @s remove RyzeFlux