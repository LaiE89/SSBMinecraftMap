scoreboard players reset @s RyzeFluxTimer
particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 1 100
particle minecraft:flash ~ ~1 ~ 0 0 0 0 0
playsound minecraft:entity.dragon_fireball.explode neutral @a[distance=..15] ~ ~ ~ 2 1.5 1
function datapack:damage2
tag @s remove RyzeFlux