particle minecraft:splash ^-0.4 ^1 ^0.4 0.2 0.1 0.2 0 5

execute at @s[scores={Timer3=1}] run particle minecraft:falling_water ~ ~0.8 ~ 0.4 1 0.4 0 20
effect give @s[scores={Timer3=1}] minecraft:strength 1 0 true
effect give @s[scores={Timer3=1}] minecraft:speed 1 0 true

execute at @s[scores={Timer3=2}] run particle minecraft:falling_dust minecraft:light_blue_wool ~ ~1 ~ 0.4 0.7 0.4 0 5
effect give @s[scores={Timer3=2}] minecraft:strength 1 1 true
effect give @s[scores={Timer3=2}] minecraft:speed 1 1 true

execute at @s[scores={Timer3=3}] run particle minecraft:nautilus ~ ~0.8 ~ 0.4 1 0.4 0 15
effect give @s[scores={Timer3=3}] minecraft:strength 1 2 true
effect give @s[scores={Timer3=3}] minecraft:speed 1 2 true

execute at @s[scores={Timer3=4}] run playsound minecraft:entity.ender_dragon.growl neutral @a[distance=..30] ~ ~ ~ 10 1 1
scoreboard players set @s[scores={Timer3=4}] Timer3 5

effect give @s[scores={Timer3=4..}] minecraft:strength 1 3 true
effect give @s[scores={Timer3=4..}] minecraft:speed 1 3 true
execute at @s[scores={Timer3=4..}] run function datapack:tanjiro_functions/constantfluxparticles