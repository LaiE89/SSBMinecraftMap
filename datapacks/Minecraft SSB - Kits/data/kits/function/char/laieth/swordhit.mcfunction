effect give @s minecraft:absorption 1 0 true
effect give @s minecraft:speed 1 1 true
execute at @s run particle firework ~ ~1 ~ 0 0 0 0.5 50 force
execute at @s run playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..10] ~ ~ ~ 3 0.5 1
