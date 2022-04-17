function datapack:damage2
playsound minecraft:entity.zombie.break_wooden_door neutral @a[distance=..40] ~ ~ ~ 5 0 1
particle minecraft:item minecraft:bone ~ ~1 ~ 0 0 0 0.2 200 
particle minecraft:block minecraft:redstone_block ~ ~0.5 ~ 0.4 1 0.4 0 200
tag @s add ZoddBleeding