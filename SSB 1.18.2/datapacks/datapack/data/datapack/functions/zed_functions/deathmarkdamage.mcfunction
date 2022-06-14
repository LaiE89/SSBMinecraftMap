function datapack:damage2
particle minecraft:block minecraft:redstone_block ~ ~ ~ 0.5 1.3 0.5 0 100
playsound minecraft:entity.zombie.break_wooden_door neutral @a[distance=..15] ~ ~ ~ 10 1 1
tag @s remove ZedDeathmarked