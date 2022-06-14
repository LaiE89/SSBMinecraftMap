function datapack:damage1
effect give @s minecraft:slowness 1 9 true
effect give @s minecraft:blindness 1 0 true
particle minecraft:explosion ~ ~1 ~
playsound minecraft:entity.zombie.attack_wooden_door neutral @a[distance=..20] ~ ~ ~ 2 0 1