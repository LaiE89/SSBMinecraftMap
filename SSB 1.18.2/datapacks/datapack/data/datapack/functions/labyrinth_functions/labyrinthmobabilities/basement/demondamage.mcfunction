function datapack:damage1
playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 2 1 1
particle minecraft:explosion ~ ~1 ~
kill @e[type=area_effect_cloud,tag=labyrinthbasementdemonprojectile]