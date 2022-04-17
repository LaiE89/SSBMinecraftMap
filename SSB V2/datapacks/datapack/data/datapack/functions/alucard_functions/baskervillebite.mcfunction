summon area_effect_cloud ~ ~ ~ {Tags:["AlucardSoul"],Radius:1,Duration:80,Particle:"dust 5 0 0 1"}
function datapack:damage1
particle minecraft:block minecraft:redstone_block ~ ~ ~ 0.4 1 0.4 0 30
playsound minecraft:entity.phantom.bite neutral @a[distance=..20] ~ ~ ~ 3 0.5 1