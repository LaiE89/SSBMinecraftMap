playsound minecraft:entity.zoglin.attack neutral @a[distance=..30] ~ ~ ~ 3 0 1
function datapack:damage1
effect give @s minecraft:slowness 1 2 true
summon area_effect_cloud ~ ~ ~ {Tags:["AlucardSoul"],Radius:1,Duration:80,Particle:"dust 5 0 0 1"}