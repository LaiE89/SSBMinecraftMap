function datapack:damage1
particle minecraft:block minecraft:redstone_block ~ ~0.5 ~ 0.4 1 0.4 0 10
effect give @s minecraft:blindness 1 0 true
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..30] ~ ~ ~ 2 0 1