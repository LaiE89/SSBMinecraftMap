function datapack:damage2
effect give @s minecraft:slowness 2 9 true
effect give @s minecraft:blindness 1 0 true
particle minecraft:explosion ~ ~1 ~
playsound minecraft:entity.generic.explode neutral @a[distance=..40] ~ ~ ~ 2 1.5 1
effect clear @p[tag=Ness] levitation
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..40] ~ ~ ~ 2 0 1
kill @e[type=area_effect_cloud,tag=pkrocketplace]
tag @p[tag=Ness] remove NessPKRocket