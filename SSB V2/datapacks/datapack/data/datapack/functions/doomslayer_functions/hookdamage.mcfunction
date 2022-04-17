 function datapack:damage1
effect give @s minecraft:slowness 1 9 true
tag @s add DoomslayerHooked
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..50] ~ ~ ~ 5 2 1
kill @e[type=armor_stand,tag=meathook]